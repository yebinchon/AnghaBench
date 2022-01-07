
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

    printf("format is:  'mode Mode', where 'Mode' is one of:\r\n\r\n");
    for (mt = ModeList; mt->name; mt++) {
 if (mt->help) {
     if (*mt->help)
  printf("%-15s %s\r\n", mt->name, mt->help);
     else
  printf("\r\n");
 }
    }
    return 0;
}
