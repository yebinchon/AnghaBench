
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct togglelist {char* name; char* help; } ;


 struct togglelist* Togglelist ;
 int printf (char*,...) ;

__attribute__((used)) static int
togglehelp(void)
{
    struct togglelist *c;

    for (c = Togglelist; c->name; c++) {
 if (c->help) {
     if (*c->help)
  printf("%-15s toggle %s\n", c->name, c->help);
     else
  printf("\n");
 }
    }
    printf("\n");
    printf("%-15s %s\n", "?", "display help information");
    return 0;
}
