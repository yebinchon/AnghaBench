
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {scalar_t__ print_motd; } ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fputs (char*,int ) ;
 int lc ;
 char* login_getcapstr (int ,char*,char*,char*) ;
 TYPE_1__ options ;
 int stdout ;

void
do_motd(void)
{
 FILE *f;
 char buf[256];

 if (options.print_motd) {




  f = fopen("/etc/motd", "r");

  if (f) {
   while (fgets(buf, sizeof(buf), f))
    fputs(buf, stdout);
   fclose(f);
  }
 }
}
