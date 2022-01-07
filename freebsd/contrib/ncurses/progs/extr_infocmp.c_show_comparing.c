
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _nc_progname ;
 int compare ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ itrace ;
 int printf (char*,...) ;
 int stderr ;

__attribute__((used)) static void
show_comparing(char **names)
{
    if (itrace) {
 switch (compare) {
 case 129:
     (void) fprintf(stderr, "%s: dumping differences\n", _nc_progname);
     break;

 case 130:
     (void) fprintf(stderr, "%s: dumping common capabilities\n", _nc_progname);
     break;

 case 128:
     (void) fprintf(stderr, "%s: dumping differences\n", _nc_progname);
     break;
 }
    }
    if (*names) {
 printf("comparing %s", *names++);
 if (*names) {
     printf(" to %s", *names++);
     while (*names) {
  printf(", %s", *names++);
     }
 }
 printf(".\n");
    }
}
