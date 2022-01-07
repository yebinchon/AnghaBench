
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int OpCodes ;


 char* lookup_opcode_name (int ) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
dump_cfg_strarray(OpCodes code, u_int count, char **vals)
{
 u_int i;

 for (i = 0; i < count; i++)
  printf("%s %s\n", lookup_opcode_name(code), vals[i]);
}
