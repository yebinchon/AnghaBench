
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {char* ifname; TYPE_1__* conf; } ;
struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct group {scalar_t__ gr_gid; } ;
struct ctrl_iface_priv {int sock; int android_control_socket; } ;
typedef scalar_t__ gid_t ;
typedef int addr ;
struct TYPE_2__ {char* ctrl_interface_group; int ctrl_interface; } ;


 int AF_UNIX ;
 scalar_t__ EEXIST ;
 int F_GETFL ;
 int F_SETFL ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int O_NONBLOCK ;
 int PF_UNIX ;
 int SOCK_DGRAM ;
 int S_IRGRP ;
 int S_IRUSR ;
 int S_IRWXG ;
 int S_IRWXU ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXUSR ;
 int android_get_control_socket (int ) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ chmod (char*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int eloop_register_read_sock (int,int ,struct wpa_supplicant*,struct ctrl_iface_priv*) ;
 scalar_t__ errno ;
 scalar_t__ fcntl (int,int ,...) ;
 struct group* getgrnam (char*) ;
 scalar_t__ lchown (char*,int,scalar_t__) ;
 scalar_t__ mkdir (char*,int) ;
 int os_free (char*) ;
 int os_memset (struct sockaddr_un*,int ,int) ;
 int os_snprintf (int ,int,char*,int ) ;
 char* os_strdup (int ) ;
 int os_strlcpy (int ,char*,int) ;
 int os_strlen (char*) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 char* os_strstr (char*,char*) ;
 int socket (int ,int ,int ) ;
 char* strerror (scalar_t__) ;
 scalar_t__ strtol (char*,char**,int) ;
 scalar_t__ unlink (char*) ;
 int wpa_msg_register_cb (int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_ctrl_iface_msg_cb ;
 char* wpa_supplicant_ctrl_iface_path (struct wpa_supplicant*) ;
 int wpa_supplicant_ctrl_iface_receive ;

__attribute__((used)) static int wpas_ctrl_iface_open_sock(struct wpa_supplicant *wpa_s,
         struct ctrl_iface_priv *priv)
{
 struct sockaddr_un addr;
 char *fname = ((void*)0);
 gid_t gid = 0;
 int gid_set = 0;
 char *buf, *dir = ((void*)0), *gid_str = ((void*)0);
 struct group *grp;
 char *endp;
 int flags;

 buf = os_strdup(wpa_s->conf->ctrl_interface);
 if (buf == ((void*)0))
  goto fail;
 if (os_strncmp(buf, "DIR=", 4) == 0) {
  dir = buf + 4;
  gid_str = os_strstr(dir, " GROUP=");
  if (gid_str) {
   *gid_str = '\0';
   gid_str += 7;
  }
 } else {
  dir = buf;
  gid_str = wpa_s->conf->ctrl_interface_group;
 }

 if (mkdir(dir, S_IRWXU | S_IRWXG) < 0) {
  if (errno == EEXIST) {
   wpa_printf(MSG_DEBUG, "Using existing control "
       "interface directory.");
  } else {
   wpa_printf(MSG_ERROR, "mkdir[ctrl_interface=%s]: %s",
       dir, strerror(errno));
   goto fail;
  }
 }
 if (gid_str) {
  grp = getgrnam(gid_str);
  if (grp) {
   gid = grp->gr_gid;
   gid_set = 1;
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
   gid_set = 1;
   wpa_printf(MSG_DEBUG, "ctrl_interface_group=%d",
       (int) gid);
  }
 }

 if (gid_set && lchown(dir, -1, gid) < 0) {
  wpa_printf(MSG_ERROR, "lchown[ctrl_interface=%s,gid=%d]: %s",
      dir, (int) gid, strerror(errno));
  goto fail;
 }


 if (gid_set &&
     chmod(dir, S_IRUSR | S_IWUSR | S_IXUSR | S_IRGRP | S_IXGRP) < 0) {
  wpa_printf(MSG_ERROR, "CTRL: chmod[ctrl_interface]: %s",
      strerror(errno));
  goto fail;
 }

 if (os_strlen(dir) + 1 + os_strlen(wpa_s->ifname) >=
     sizeof(addr.sun_path)) {
  wpa_printf(MSG_ERROR, "ctrl_iface path limit exceeded");
  goto fail;
 }

 priv->sock = socket(PF_UNIX, SOCK_DGRAM, 0);
 if (priv->sock < 0) {
  wpa_printf(MSG_ERROR, "socket(PF_UNIX): %s", strerror(errno));
  goto fail;
 }

 os_memset(&addr, 0, sizeof(addr));



 addr.sun_family = AF_UNIX;
 fname = wpa_supplicant_ctrl_iface_path(wpa_s);
 if (fname == ((void*)0))
  goto fail;
 os_strlcpy(addr.sun_path, fname, sizeof(addr.sun_path));
 if (bind(priv->sock, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
  wpa_printf(MSG_DEBUG, "ctrl_iface bind(PF_UNIX) failed: %s",
      strerror(errno));
  if (connect(priv->sock, (struct sockaddr *) &addr,
       sizeof(addr)) < 0) {
   wpa_printf(MSG_DEBUG, "ctrl_iface exists, but does not"
       " allow connections - assuming it was left"
       "over from forced program termination");
   if (unlink(fname) < 0) {
    wpa_printf(MSG_ERROR,
        "Could not unlink existing ctrl_iface socket '%s': %s",
        fname, strerror(errno));
    goto fail;
   }
   if (bind(priv->sock, (struct sockaddr *) &addr,
     sizeof(addr)) < 0) {
    wpa_printf(MSG_ERROR, "supp-ctrl-iface-init: bind(PF_UNIX): %s",
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

 if (gid_set && lchown(fname, -1, gid) < 0) {
  wpa_printf(MSG_ERROR, "lchown[ctrl_interface=%s,gid=%d]: %s",
      fname, (int) gid, strerror(errno));
  goto fail;
 }

 if (chmod(fname, S_IRWXU | S_IRWXG) < 0) {
  wpa_printf(MSG_ERROR, "chmod[ctrl_interface=%s]: %s",
      fname, strerror(errno));
  goto fail;
 }
 os_free(fname);
 flags = fcntl(priv->sock, F_GETFL);
 if (flags >= 0) {
  flags |= O_NONBLOCK;
  if (fcntl(priv->sock, F_SETFL, flags) < 0) {
   wpa_printf(MSG_INFO, "fcntl(ctrl, O_NONBLOCK): %s",
       strerror(errno));

  }
 }

 eloop_register_read_sock(priv->sock, wpa_supplicant_ctrl_iface_receive,
     wpa_s, priv);
 wpa_msg_register_cb(wpa_supplicant_ctrl_iface_msg_cb);

 os_free(buf);
 return 0;

fail:
 if (priv->sock >= 0) {
  close(priv->sock);
  priv->sock = -1;
 }
 if (fname) {
  unlink(fname);
  os_free(fname);
 }
 os_free(buf);
 return -1;
}
