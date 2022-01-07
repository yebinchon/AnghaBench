
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ServerOpCodes ;


 char* lookup_opcode_name (int ) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
dump_cfg_string(ServerOpCodes code, const char *val)
{
 printf("%s %s\n", lookup_opcode_name(code),
     val == ((void*)0) ? "none" : val);
}
