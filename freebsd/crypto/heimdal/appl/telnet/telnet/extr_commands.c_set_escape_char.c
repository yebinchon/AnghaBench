
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _POSIX_VDISABLE ;
 char* control (scalar_t__) ;
 scalar_t__ escape ;
 int printf (char*,char*) ;
 scalar_t__ rlogin ;
 scalar_t__ special (char*) ;

void
set_escape_char(char *s)
{
 if (rlogin != _POSIX_VDISABLE) {
  rlogin = (s && *s) ? special(s) : _POSIX_VDISABLE;
  printf("Telnet rlogin escape character is '%s'.\r\n",
     control(rlogin));
 } else {
  escape = (s && *s) ? special(s) : _POSIX_VDISABLE;
  printf("Telnet escape character is '%s'.\r\n", control(escape));
 }
}
