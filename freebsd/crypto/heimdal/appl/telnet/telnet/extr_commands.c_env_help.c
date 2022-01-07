
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct envlist {char* name; char* help; } ;


 struct envlist* EnvList ;
 int printf (char*,...) ;

__attribute__((used)) static void
env_help()
{
    struct envlist *c;

    for (c = EnvList; c->name; c++) {
 if (c->help) {
     if (*c->help)
  printf("%-15s %s\r\n", c->name, c->help);
     else
  printf("\r\n");
 }
    }
}
