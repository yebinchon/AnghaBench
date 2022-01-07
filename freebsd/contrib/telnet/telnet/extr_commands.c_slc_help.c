
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slclist {char* name; char* help; } ;


 struct slclist* SlcList ;
 int printf (char*,...) ;

__attribute__((used)) static void
slc_help(void)
{
    struct slclist *c;

    for (c = SlcList; c->name; c++) {
 if (c->help) {
     if (*c->help)
  printf("%-15s %s\n", c->name, c->help);
     else
  printf("\n");
 }
    }
}
