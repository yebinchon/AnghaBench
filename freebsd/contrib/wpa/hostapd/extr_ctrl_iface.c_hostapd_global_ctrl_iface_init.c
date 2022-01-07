
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct hapd_interfaces {int global_ctrl_sock; char* global_iface_path; char* global_iface_name; scalar_t__ ctrl_iface_group; } ;
struct addrinfo {int ai_addrlen; struct sockaddr* ai_addr; int ai_protocol; int ai_socktype; int ai_family; int ai_flags; int member_0; } ;
typedef int p ;
typedef int addr ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNIX ;
 int AI_PASSIVE ;
 int COOKIE_LEN ;
 scalar_t__ EEXIST ;
 int HOSTAPD_GLOBAL_CTRL_IFACE_PORT ;
 int HOSTAPD_GLOBAL_CTRL_IFACE_PORT_LIMIT ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int PF_UNIX ;
 int SOCK_DGRAM ;
 int S_IRWXG ;
 int S_IRWXU ;
 int atoi (char*) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ chmod (char*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 scalar_t__ eloop_register_read_sock (int,int ,struct hapd_interfaces*,int *) ;
 scalar_t__ errno ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int gcookie ;
 int getaddrinfo (int *,char*,struct addrinfo*,struct addrinfo**) ;
 int hostapd_global_ctrl_iface_deinit (struct hapd_interfaces*) ;
 char* hostapd_global_ctrl_iface_path (struct hapd_interfaces*) ;
 int hostapd_global_ctrl_iface_receive ;
 scalar_t__ lchown (char*,int,scalar_t__) ;
 scalar_t__ mkdir (char*,int) ;
 int os_free (char*) ;
 int os_get_random (int ,int ) ;
 int os_memset (struct sockaddr_un*,int ,int) ;
 int os_snprintf (char*,int,char*,int) ;
 int os_strlcpy (int ,char*,int) ;
 int os_strlen (char*) ;
 char* os_strstr (char*,char*) ;
 void* socket (int ,int ,int ) ;
 char* strerror (scalar_t__) ;
 scalar_t__ unlink (char*) ;
 int wpa_printf (int ,char*,...) ;

int hostapd_global_ctrl_iface_init(struct hapd_interfaces *interface)
{
 struct sockaddr_un addr;
 int s = -1;
 char *fname = ((void*)0);

 if (interface->global_iface_path == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "ctrl_iface not configured!");
  return 0;
 }

 if (mkdir(interface->global_iface_path, S_IRWXU | S_IRWXG) < 0) {
  if (errno == EEXIST) {
   wpa_printf(MSG_DEBUG, "Using existing control "
       "interface directory.");
  } else {
   wpa_printf(MSG_ERROR, "mkdir[ctrl_interface]: %s",
       strerror(errno));
   goto fail;
  }
 } else if (interface->ctrl_iface_group &&
     lchown(interface->global_iface_path, -1,
     interface->ctrl_iface_group) < 0) {
  wpa_printf(MSG_ERROR, "lchown[ctrl_interface]: %s",
      strerror(errno));
  goto fail;
 }

 if (os_strlen(interface->global_iface_path) + 1 +
     os_strlen(interface->global_iface_name) >= sizeof(addr.sun_path))
  goto fail;

 s = socket(PF_UNIX, SOCK_DGRAM, 0);
 if (s < 0) {
  wpa_printf(MSG_ERROR, "socket(PF_UNIX): %s", strerror(errno));
  goto fail;
 }

 os_memset(&addr, 0, sizeof(addr));



 addr.sun_family = AF_UNIX;
 fname = hostapd_global_ctrl_iface_path(interface);
 if (fname == ((void*)0))
  goto fail;
 os_strlcpy(addr.sun_path, fname, sizeof(addr.sun_path));
 if (bind(s, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
  wpa_printf(MSG_DEBUG, "ctrl_iface bind(PF_UNIX) failed: %s",
      strerror(errno));
  if (connect(s, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
   wpa_printf(MSG_DEBUG, "ctrl_iface exists, but does not"
       " allow connections - assuming it was left"
       "over from forced program termination");
   if (unlink(fname) < 0) {
    wpa_printf(MSG_ERROR,
        "Could not unlink existing ctrl_iface socket '%s': %s",
        fname, strerror(errno));
    goto fail;
   }
   if (bind(s, (struct sockaddr *) &addr, sizeof(addr)) <
       0) {
    wpa_printf(MSG_ERROR, "bind(PF_UNIX): %s",
        strerror(errno));
    goto fail;
   }
   wpa_printf(MSG_DEBUG, "Successfully replaced leftover "
       "ctrl_iface socket '%s'", fname);
  } else {
   wpa_printf(MSG_INFO, "ctrl_iface exists and seems to "
       "be in use - cannot override it");
   wpa_printf(MSG_INFO, "Delete '%s' manually if it is "
       "not used anymore", fname);
   os_free(fname);
   fname = ((void*)0);
   goto fail;
  }
 }

 if (interface->ctrl_iface_group &&
     lchown(fname, -1, interface->ctrl_iface_group) < 0) {
  wpa_printf(MSG_ERROR, "lchown[ctrl_interface]: %s",
      strerror(errno));
  goto fail;
 }

 if (chmod(fname, S_IRWXU | S_IRWXG) < 0) {
  wpa_printf(MSG_ERROR, "chmod[ctrl_interface/ifname]: %s",
      strerror(errno));
  goto fail;
 }
 os_free(fname);

 interface->global_ctrl_sock = s;
 eloop_register_read_sock(s, hostapd_global_ctrl_iface_receive,
     interface, ((void*)0));

 return 0;

fail:
 if (s >= 0)
  close(s);
 if (fname) {
  unlink(fname);
  os_free(fname);
 }
 return -1;

}
