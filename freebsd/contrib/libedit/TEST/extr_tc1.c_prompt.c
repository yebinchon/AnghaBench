
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditLine ;


 scalar_t__ continuation ;

__attribute__((used)) static char *
prompt(EditLine *el)
{
 static char a[] = "\1\033[7m\1Edit$\1\033[0m\1 ";
 static char b[] = "Edit> ";

 return (continuation ? b : a);
}
