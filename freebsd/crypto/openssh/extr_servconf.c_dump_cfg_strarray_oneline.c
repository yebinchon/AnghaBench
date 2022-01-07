
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef scalar_t__ ServerOpCodes ;


 char* lookup_opcode_name (scalar_t__) ;
 int printf (char*,...) ;
 scalar_t__ sAuthenticationMethods ;

__attribute__((used)) static void
dump_cfg_strarray_oneline(ServerOpCodes code, u_int count, char **vals)
{
 u_int i;

 if (count <= 0 && code != sAuthenticationMethods)
  return;
 printf("%s", lookup_opcode_name(code));
 for (i = 0; i < count; i++)
  printf(" %s", vals[i]);
 if (code == sAuthenticationMethods && count == 0)
  printf(" any");
 printf("\n");
}
