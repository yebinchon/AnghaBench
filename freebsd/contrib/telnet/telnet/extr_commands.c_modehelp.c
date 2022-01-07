
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modelist {char* name; char* help; } ;


 struct modelist* ModeList ;
 int printf (char*,...) ;

__attribute__((used)) static int
modehelp(void)
{
    struct modelist *mt;

    printf("format is:  'mode Mode', where 'Mode' is one of:\n\n");
    for (mt = ModeList; mt->name; mt++) {
 if (mt->help) {
     if (*mt->help)
  printf("%-15s %s\n", mt->name, mt->help);
     else
  printf("\n");
 }
    }
    return 0;
}
