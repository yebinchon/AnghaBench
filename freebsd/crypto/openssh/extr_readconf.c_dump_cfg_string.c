
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OpCodes ;


 char* lookup_opcode_name (int ) ;
 int printf (char*,char*,char const*) ;

__attribute__((used)) static void
dump_cfg_string(OpCodes code, const char *val)
{
 if (val == ((void*)0))
  return;
 printf("%s %s\n", lookup_opcode_name(code), val);
}
