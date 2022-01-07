
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char chtype ;


 char A_NORMAL ;
 int report_nstr (char*) ;

void
report_byte(chtype c)
{
 chtype string[2];

 string[0] = c;
 string[1] = A_NORMAL | '\0';
 report_nstr(string);
}
