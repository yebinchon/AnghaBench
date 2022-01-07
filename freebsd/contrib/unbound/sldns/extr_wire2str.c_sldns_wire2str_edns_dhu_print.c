
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ sldns_lookup_table ;


 int sldns_hashes ;
 TYPE_1__* sldns_lookup_by_id (int ,int) ;
 scalar_t__ sldns_str_print (char**,size_t*,char*,int) ;

int sldns_wire2str_edns_dhu_print(char** s, size_t* sl, uint8_t* data,
 size_t len)
{
 sldns_lookup_table *lt;
 size_t i;
 int w = 0;
 for(i=0; i<len; i++) {
  lt = sldns_lookup_by_id(sldns_hashes, (int)data[i]);
  if(lt && lt->name)
   w += sldns_str_print(s, sl, " %s", lt->name);
  else w += sldns_str_print(s, sl, " %d", (int)data[i]);
 }
 return w;
}
