
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct tidx {int dummy; } ;


 int IPFW_TLV_TBL_NAME ;
 int pack_object (struct tidx*,char*,int ) ;
 scalar_t__ table_check_name (char*) ;

__attribute__((used)) static uint16_t
pack_table(struct tidx *tstate, char *name)
{

 if (table_check_name(name) != 0)
  return (0);

 return (pack_object(tstate, name, IPFW_TLV_TBL_NAME));
}
