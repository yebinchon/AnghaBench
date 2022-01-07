
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ibv_gid {int dummy; } ibv_gid ;
typedef int uint8_t ;
struct ds_dest {TYPE_2__* qp; } ;
struct TYPE_4__ {TYPE_1__* cm_id; } ;
struct TYPE_3__ {int port_num; int verbs; } ;


 int ibv_query_gid (int ,int ,int,union ibv_gid*) ;
 int memcmp (union ibv_gid*,union ibv_gid*,int) ;

__attribute__((used)) static uint8_t udp_svc_sgid_index(struct ds_dest *dest, union ibv_gid *sgid)
{
 union ibv_gid gid;
 int i;

 for (i = 0; i < 16; i++) {
  ibv_query_gid(dest->qp->cm_id->verbs, dest->qp->cm_id->port_num,
         i, &gid);
  if (!memcmp(sgid, &gid, sizeof gid))
   return i;
 }
 return 0;
}
