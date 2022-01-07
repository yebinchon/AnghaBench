
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_priv_interface {int fd; char const* driver_name; char const* ifname; char const* sock_name; TYPE_1__* driver; void* ctx; } ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;
struct TYPE_2__ {int name; } ;


 int AF_UNIX ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int PF_UNIX ;
 int SOCK_DGRAM ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ chmod (char const*,int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 char const* dup_binstr (char const*,size_t) ;
 int eloop_register_read_sock (int,int ,struct wpa_priv_interface*,int *) ;
 int errno ;
 char const* os_malloc (size_t) ;
 int os_memset (struct sockaddr_un*,int ,int) ;
 int os_snprintf (char const*,size_t,char*,char const*,char const*) ;
 char* os_strchr (char const*,char) ;
 scalar_t__ os_strcmp (char const*,int ) ;
 char const* os_strdup (char*) ;
 int os_strlcpy (int ,char const*,int) ;
 int os_strlen (char const*) ;
 struct wpa_priv_interface* os_zalloc (int) ;
 int socket (int ,int ,int ) ;
 char const* strerror (int ) ;
 scalar_t__ unlink (char const*) ;
 TYPE_1__** wpa_drivers ;
 int wpa_printf (int ,char*,...) ;
 int wpa_priv_interface_deinit (struct wpa_priv_interface*) ;
 int wpa_priv_receive ;

__attribute__((used)) static struct wpa_priv_interface *
wpa_priv_interface_init(void *ctx, const char *dir, const char *params)
{
 struct wpa_priv_interface *iface;
 char *pos;
 size_t len;
 struct sockaddr_un addr;
 int i;

 pos = os_strchr(params, ':');
 if (pos == ((void*)0))
  return ((void*)0);

 iface = os_zalloc(sizeof(*iface));
 if (iface == ((void*)0))
  return ((void*)0);
 iface->fd = -1;
 iface->ctx = ctx;

 len = pos - params;
 iface->driver_name = dup_binstr(params, len);
 if (iface->driver_name == ((void*)0)) {
  wpa_priv_interface_deinit(iface);
  return ((void*)0);
 }

 for (i = 0; wpa_drivers[i]; i++) {
  if (os_strcmp(iface->driver_name,
         wpa_drivers[i]->name) == 0) {
   iface->driver = wpa_drivers[i];
   break;
  }
 }
 if (iface->driver == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Unsupported driver '%s'",
      iface->driver_name);
  wpa_priv_interface_deinit(iface);
  return ((void*)0);
 }

 pos++;
 iface->ifname = os_strdup(pos);
 if (iface->ifname == ((void*)0)) {
  wpa_priv_interface_deinit(iface);
  return ((void*)0);
 }

 len = os_strlen(dir) + 1 + os_strlen(iface->ifname);
 iface->sock_name = os_malloc(len + 1);
 if (iface->sock_name == ((void*)0)) {
  wpa_priv_interface_deinit(iface);
  return ((void*)0);
 }

 os_snprintf(iface->sock_name, len + 1, "%s/%s", dir, iface->ifname);
 if (os_strlen(iface->sock_name) >= sizeof(addr.sun_path)) {
  wpa_priv_interface_deinit(iface);
  return ((void*)0);
 }

 iface->fd = socket(PF_UNIX, SOCK_DGRAM, 0);
 if (iface->fd < 0) {
  wpa_printf(MSG_ERROR, "socket(PF_UNIX): %s", strerror(errno));
  wpa_priv_interface_deinit(iface);
  return ((void*)0);
 }

 os_memset(&addr, 0, sizeof(addr));
 addr.sun_family = AF_UNIX;
 os_strlcpy(addr.sun_path, iface->sock_name, sizeof(addr.sun_path));

 if (bind(iface->fd, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
  wpa_printf(MSG_DEBUG, "bind(PF_UNIX) failed: %s",
      strerror(errno));
  if (connect(iface->fd, (struct sockaddr *) &addr,
       sizeof(addr)) < 0) {
   wpa_printf(MSG_DEBUG, "Socket exists, but does not "
       "allow connections - assuming it was "
       "leftover from forced program termination");
   if (unlink(iface->sock_name) < 0) {
    wpa_printf(MSG_ERROR,
        "Could not unlink existing ctrl_iface socket '%s': %s",
        iface->sock_name, strerror(errno));
    goto fail;
   }
   if (bind(iface->fd, (struct sockaddr *) &addr,
     sizeof(addr)) < 0) {
    wpa_printf(MSG_ERROR,
        "wpa-priv-iface-init: bind(PF_UNIX): %s",
        strerror(errno));
    goto fail;
   }
   wpa_printf(MSG_DEBUG, "Successfully replaced leftover "
       "socket '%s'", iface->sock_name);
  } else {
   wpa_printf(MSG_INFO, "Socket exists and seems to be "
       "in use - cannot override it");
   wpa_printf(MSG_INFO, "Delete '%s' manually if it is "
       "not used anymore", iface->sock_name);
   goto fail;
  }
 }

 if (chmod(iface->sock_name, S_IRWXU | S_IRWXG | S_IRWXO) < 0) {
  wpa_printf(MSG_ERROR, "chmod: %s", strerror(errno));
  goto fail;
 }

 eloop_register_read_sock(iface->fd, wpa_priv_receive, iface, ((void*)0));

 return iface;

fail:
 wpa_priv_interface_deinit(iface);
 return ((void*)0);
}
