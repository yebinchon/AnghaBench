
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
typedef int CHAR16 ;


 int boot_parse_arg (char*) ;
 int cpy16to8 (int *,char*,int) ;

__attribute__((used)) static int
parse_args(int argc, CHAR16 *argv[])
{
 int i, j, howto;
 bool vargood;
 char var[128];
 howto = 0;
 for (i = 1; i < argc; i++) {
  cpy16to8(argv[i], var, sizeof(var));
  howto |= boot_parse_arg(var);
 }

 return (howto);
}
