
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int full_tty ;
struct TYPE_4__ {int r_tty; } ;
typedef TYPE_1__ CTL_MSG ;


 int PERMISSION_DENIED ;
 char* _PATH_DEV ;
 int print_mesg (int ,TYPE_1__*,char const*) ;
 int snprintf (char*,int,char*,char*,int ) ;
 scalar_t__ stat (char*,struct stat*) ;

int
announce(CTL_MSG *request, const char *remote_machine)
{
 char full_tty[32];
 struct stat stbuf;

 (void)snprintf(full_tty, sizeof(full_tty),
     "%s%s", _PATH_DEV, request->r_tty);
 if (stat(full_tty, &stbuf) < 0 || (stbuf.st_mode&020) == 0)
  return (PERMISSION_DENIED);
 return (print_mesg(request->r_tty, request, remote_machine));
}
