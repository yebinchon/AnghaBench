
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int ;
struct stat {int dummy; } ;
struct ssh {int dummy; } ;
struct in_addr {int dummy; } ;
struct hostent {int * h_addr_list; } ;
typedef int hostname ;
struct TYPE_7__ {int permit_x11_forwarding_flag; } ;
struct TYPE_6__ {scalar_t__ x11_use_localhost; int x11_display_offset; int * xauth_location; int x11_forwarding; } ;
struct TYPE_5__ {int display_number; int* x11_chanids; int screen; void* auth_display; int * display; int single_connection; } ;
typedef TYPE_1__ Session ;


 int NI_MAXHOST ;
 TYPE_4__* auth_opts ;
 int channel_register_cleanup (struct ssh*,int,int ,int ) ;
 int debug (char*) ;
 int errno ;
 int error (char*) ;
 int fatal (char*,int ) ;
 struct hostent* gethostbyname (char*) ;
 scalar_t__ gethostname (char*,int) ;
 char* inet_ntoa (struct in_addr) ;
 int memcpy (struct in_addr*,int ,int) ;
 TYPE_3__ options ;
 int packet_send_debug (char*) ;
 int session_close_single_x11 ;
 int snprintf (char*,int,char*,...) ;
 int stat (int *,struct stat*) ;
 int strerror (int ) ;
 int x11_create_display_inet (struct ssh*,int ,scalar_t__,int ,int*,int**) ;
 void* xstrdup (char*) ;

int
session_setup_x11fwd(struct ssh *ssh, Session *s)
{
 struct stat st;
 char display[512], auth_display[512];
 char hostname[NI_MAXHOST];
 u_int i;

 if (!auth_opts->permit_x11_forwarding_flag) {
  packet_send_debug("X11 forwarding disabled by key options.");
  return 0;
 }
 if (!options.x11_forwarding) {
  debug("X11 forwarding disabled in server configuration file.");
  return 0;
 }
 if (options.xauth_location == ((void*)0) ||
     (stat(options.xauth_location, &st) == -1)) {
  packet_send_debug("No xauth program; cannot forward X11.");
  return 0;
 }
 if (s->display != ((void*)0)) {
  debug("X11 display already set.");
  return 0;
 }
 if (x11_create_display_inet(ssh, options.x11_display_offset,
     options.x11_use_localhost, s->single_connection,
     &s->display_number, &s->x11_chanids) == -1) {
  debug("x11_create_display_inet failed.");
  return 0;
 }
 for (i = 0; s->x11_chanids[i] != -1; i++) {
  channel_register_cleanup(ssh, s->x11_chanids[i],
      session_close_single_x11, 0);
 }


 if (gethostname(hostname, sizeof(hostname)) < 0)
  fatal("gethostname: %.100s", strerror(errno));





 if (options.x11_use_localhost) {
  snprintf(display, sizeof display, "localhost:%u.%u",
      s->display_number, s->screen);
  snprintf(auth_display, sizeof auth_display, "unix:%u.%u",
      s->display_number, s->screen);
  s->display = xstrdup(display);
  s->auth_display = xstrdup(auth_display);
 } else {
  snprintf(display, sizeof display, "%.400s:%u.%u", hostname,
      s->display_number, s->screen);

  s->display = xstrdup(display);
  s->auth_display = xstrdup(display);
 }

 return 1;
}
