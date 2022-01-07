
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ServerOpCodes ;


 char* lookup_opcode_name (int ) ;
 int printf (char*,char*,int) ;

__attribute__((used)) static void
dump_cfg_oct(ServerOpCodes code, int val)
{
 printf("%s 0%o\n", lookup_opcode_name(code), val);
}
