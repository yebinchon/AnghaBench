
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * raw; } ;
struct precreate_mgroup {TYPE_2__ mgid; } ;
struct part_conf {TYPE_1__* p_prtn; int p_log; } ;
typedef int ib_net16_t ;
typedef int boolean_t ;
struct TYPE_3__ {int pkey; int name; } ;


 int AF_INET6 ;
 int FALSE ;
 int INET6_ADDRSTRLEN ;
 int OSM_LOG (int ,int ,char*,int ,int ,int ,int ) ;
 int OSM_LOG_ERROR ;
 int TRUE ;
 int cl_hton16 (int) ;
 int cl_ntoh16 (int) ;
 int inet_ntop (int ,int *,char*,int) ;
 scalar_t__ mgid_is_broadcast (TYPE_2__*) ;

__attribute__((used)) static inline boolean_t ip_mgroup_pkey_ok(struct part_conf *conf,
       struct precreate_mgroup *group)
{
 ib_net16_t mpkey = *(ib_net16_t *)&group->mgid.raw[4];
 char gid_str[INET6_ADDRSTRLEN];

 if (mgid_is_broadcast(&group->mgid)

     || mpkey == 0x0000

     || mpkey == (conf->p_prtn->pkey | cl_hton16(0x8000)))
  return (TRUE);

 OSM_LOG(conf->p_log, OSM_LOG_ERROR,
  "IP MC group (%s) specified with invalid pkey 0x%04x "
  "for partition pkey = 0x%04x (%s)\n",
  inet_ntop(AF_INET6, group->mgid.raw, gid_str, sizeof gid_str),
  cl_ntoh16(mpkey), cl_ntoh16(conf->p_prtn->pkey), conf->p_prtn->name);
 return (FALSE);
}
