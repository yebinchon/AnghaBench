
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int name; } ;
typedef TYPE_1__ sldns_lookup_table ;


 TYPE_1__* sldns_lookup_by_id (int ,int) ;
 int sldns_opcodes ;
 int sldns_str_print (char**,size_t*,char*,unsigned int) ;

int sldns_wire2str_opcode_print(char** s, size_t* slen, int opcode)
{
 sldns_lookup_table *lt = sldns_lookup_by_id(sldns_opcodes, opcode);
 if (lt && lt->name) {
  return sldns_str_print(s, slen, "%s", lt->name);
 }
 return sldns_str_print(s, slen, "OPCODE%u", (unsigned)opcode);
}
