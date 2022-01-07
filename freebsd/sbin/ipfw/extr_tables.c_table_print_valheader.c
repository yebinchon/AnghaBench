
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ IPFW_VTYPE_LEGACY ;
 int memset (char*,int ,size_t) ;
 int print_flags_buffer (char*,size_t,int ,scalar_t__) ;
 int snprintf (char*,size_t,char*) ;
 int tablevaltypes ;

__attribute__((used)) static void
table_print_valheader(char *buf, size_t bufsize, uint32_t vmask)
{

 if (vmask == IPFW_VTYPE_LEGACY) {
  snprintf(buf, bufsize, "legacy");
  return;
 }

 memset(buf, 0, bufsize);
 print_flags_buffer(buf, bufsize, tablevaltypes, vmask);
}
