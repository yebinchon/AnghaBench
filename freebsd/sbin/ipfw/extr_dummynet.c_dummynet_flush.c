
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_id {int len; } ;
typedef int oid ;


 int DN_API_VERSION ;
 int DN_CMD_FLUSH ;
 int IP_DUMMYNET3 ;
 int do_cmd (int ,struct dn_id*,int ) ;
 int oid_fill (struct dn_id*,int,int ,int ) ;

void
dummynet_flush(void)
{
 struct dn_id oid;
 oid_fill(&oid, sizeof(oid), DN_CMD_FLUSH, DN_API_VERSION);
 do_cmd(IP_DUMMYNET3, &oid, oid.len);
}
