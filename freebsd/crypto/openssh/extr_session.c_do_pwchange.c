
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ttyfd; TYPE_1__* pw; } ;
struct TYPE_4__ {int pw_name; } ;
typedef TYPE_2__ Session ;


 int _PATH_PASSWD_PROG ;
 int execl (int ,char*,char*,...) ;
 int exit (int) ;
 int fflush (int *) ;
 int fprintf (int ,char*) ;
 int perror (char*) ;
 int setexeccon (int *) ;
 int stderr ;

__attribute__((used)) static void
do_pwchange(Session *s)
{
 fflush(((void*)0));
 fprintf(stderr, "WARNING: Your password has expired.\n");
 if (s->ttyfd != -1) {
  fprintf(stderr,
      "You must change your password now and login again!\n");







  execl(_PATH_PASSWD_PROG, "passwd", (char *)((void*)0));

  perror("passwd");
 } else {
  fprintf(stderr,
      "Password change required but no TTY available.\n");
 }
 exit(1);
}
