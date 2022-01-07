
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* ctrl_interface; char* ctrl_interface_group; } ;
struct wpa_global {TYPE_1__ params; } ;
struct sockaddr_un {int sun_len; char* sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct group {scalar_t__ gr_gid; } ;
struct ctrl_iface_global_priv {int sock; int android_control_socket; } ;
typedef scalar_t__ gid_t ;
typedef int addr ;


 int AF_UNIX ;
 int F_GETFL ;
 int F_SETFL ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int O_NONBLOCK ;
 int PF_UNIX ;
 int SOCK_DGRAM ;
 int S_IRWXG ;
 int S_IRWXU ;
 void* android_get_control_socket (char const*) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ chmod (char const*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int eloop_register_read_sock (int,int ,struct wpa_global*,struct ctrl_iface_global_priv*) ;
 int errno ;
 scalar_t__ fcntl (int,int ,...) ;
 struct group* getgrnam (char*) ;
 scalar_t__ lchown (char const*,int,scalar_t__) ;
 int os_memset (struct sockaddr_un*,int ,int) ;
 int os_strlcpy (char*,char const*,int) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;
 scalar_t__ strtol (char*,char**,int) ;
 scalar_t__ unlink (char const*) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_global_ctrl_iface_receive ;

__attribute__((used)) static int wpas_global_ctrl_iface_open_sock(struct wpa_global *global,
         struct ctrl_iface_global_priv *priv)
{
 struct sockaddr_un addr;
 const char *ctrl = global->params.ctrl_interface;
 int flags;

 wpa_printf(MSG_DEBUG, "Global control interface '%s'", ctrl);
 priv->sock = socket(PF_UNIX, SOCK_DGRAM, 0);
 if (priv->sock < 0) {
  wpa_printf(MSG_ERROR, "socket(PF_UNIX): %s", strerror(errno));
  goto fail;
 }

 os_memset(&addr, 0, sizeof(addr));



 addr.sun_family = AF_UNIX;

 if (os_strncmp(ctrl, "@abstract:", 10) == 0) {
  addr.sun_path[0] = '\0';
  os_strlcpy(addr.sun_path + 1, ctrl + 10,
      sizeof(addr.sun_path) - 1);
  if (bind(priv->sock, (struct sockaddr *) &addr, sizeof(addr)) <
      0) {
   wpa_printf(MSG_ERROR, "supp-global-ctrl-iface-init: "
       "bind(PF_UNIX;%s) failed: %s",
       ctrl, strerror(errno));
   goto fail;
  }
  wpa_printf(MSG_DEBUG, "Using Abstract control socket '%s'",
      ctrl + 10);
  goto havesock;
 }

 os_strlcpy(addr.sun_path, ctrl, sizeof(addr.sun_path));
 if (bind(priv->sock, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
  wpa_printf(MSG_INFO, "supp-global-ctrl-iface-init(%s) (will try fixup): bind(PF_UNIX): %s",
      ctrl, strerror(errno));
  if (connect(priv->sock, (struct sockaddr *) &addr,
       sizeof(addr)) < 0) {
   wpa_printf(MSG_DEBUG, "ctrl_iface exists, but does not"
       " allow connections - assuming it was left"
       "over from forced program termination");
   if (unlink(ctrl) < 0) {
    wpa_printf(MSG_ERROR,
        "Could not unlink existing ctrl_iface socket '%s': %s",
        ctrl, strerror(errno));
    goto fail;
   }
   if (bind(priv->sock, (struct sockaddr *) &addr,
     sizeof(addr)) < 0) {
    wpa_printf(MSG_ERROR, "supp-glb-iface-init: bind(PF_UNIX;%s): %s",
        ctrl, strerror(errno));
    goto fail;
   }
   wpa_printf(MSG_DEBUG, "Successfully replaced leftover "
       "ctrl_iface socket '%s'",
       ctrl);
  } else {
   wpa_printf(MSG_INFO, "ctrl_iface exists and seems to "
       "be in use - cannot override it");
   wpa_printf(MSG_INFO, "Delete '%s' manually if it is "
       "not used anymore",
       ctrl);
   goto fail;
  }
 }

 wpa_printf(MSG_DEBUG, "Using UNIX control socket '%s'", ctrl);

 if (global->params.ctrl_interface_group) {
  char *gid_str = global->params.ctrl_interface_group;
  gid_t gid = 0;
  struct group *grp;
  char *endp;

  grp = getgrnam(gid_str);
  if (grp) {
   gid = grp->gr_gid;
   wpa_printf(MSG_DEBUG, "ctrl_interface_group=%d"
       " (from group name '%s')",
       (int) gid, gid_str);
  } else {

   gid = strtol(gid_str, &endp, 10);
   if (*gid_str == '\0' || *endp != '\0') {
    wpa_printf(MSG_ERROR, "CTRL: Invalid group "
        "'%s'", gid_str);
    goto fail;
   }
   wpa_printf(MSG_DEBUG, "ctrl_interface_group=%d",
       (int) gid);
  }
  if (lchown(ctrl, -1, gid) < 0) {
   wpa_printf(MSG_ERROR,
       "lchown[global_ctrl_interface=%s,gid=%d]: %s",
       ctrl, (int) gid, strerror(errno));
   goto fail;
  }

  if (chmod(ctrl, S_IRWXU | S_IRWXG) < 0) {
   wpa_printf(MSG_ERROR,
       "chmod[global_ctrl_interface=%s]: %s",
       ctrl, strerror(errno));
   goto fail;
  }
 } else {
  if (chmod(ctrl, S_IRWXU) < 0) {
   wpa_printf(MSG_DEBUG,
       "chmod[global_ctrl_interface=%s](S_IRWXU): %s",
       ctrl, strerror(errno));


  }
 }

havesock:





 flags = fcntl(priv->sock, F_GETFL);
 if (flags >= 0) {
  flags |= O_NONBLOCK;
  if (fcntl(priv->sock, F_SETFL, flags) < 0) {
   wpa_printf(MSG_INFO, "fcntl(ctrl, O_NONBLOCK): %s",
       strerror(errno));

  }
 }

 eloop_register_read_sock(priv->sock,
     wpa_supplicant_global_ctrl_iface_receive,
     global, priv);

 return 0;

fail:
 if (priv->sock >= 0) {
  close(priv->sock);
  priv->sock = -1;
 }
 return -1;
}
