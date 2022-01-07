
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ib_portid_t ;
struct TYPE_3__ {int* fdb; int linearcap; int linearFDBtop; int enhsp0; void* switchinfo; } ;
typedef TYPE_1__ Switch ;


 int DEBUG (char*,int ,int,int) ;
 int IB_ATTR_LINEARFORWTBL ;
 int IB_ATTR_SWITCH_INFO ;
 int IB_SW_ENHANCED_PORT0_F ;
 int IB_SW_LINEAR_FDB_CAP_F ;
 int IB_SW_LINEAR_FDB_TOP_F ;
 int mad_decode_field (void*,int ,int*) ;
 int memset (void*,int ,int) ;
 int portid2str (int *) ;
 int smp_query_via (void*,int *,int ,int,int ,int ) ;
 int srcport ;
 int timeout ;

__attribute__((used)) static int switch_lookup(Switch * sw, ib_portid_t * portid, int lid)
{
 void *si = sw->switchinfo, *fdb = sw->fdb;

 memset(si, 0, sizeof(sw->switchinfo));
 if (!smp_query_via(si, portid, IB_ATTR_SWITCH_INFO, 0, timeout,
      srcport))
  return -1;

 mad_decode_field(si, IB_SW_LINEAR_FDB_CAP_F, &sw->linearcap);
 mad_decode_field(si, IB_SW_LINEAR_FDB_TOP_F, &sw->linearFDBtop);
 mad_decode_field(si, IB_SW_ENHANCED_PORT0_F, &sw->enhsp0);

 if (lid >= sw->linearcap && lid > sw->linearFDBtop)
  return -1;

 memset(fdb, 0, sizeof(sw->fdb));
 if (!smp_query_via(fdb, portid, IB_ATTR_LINEARFORWTBL, lid / 64,
      timeout, srcport))
  return -1;

 DEBUG("portid %s: forward lid %d to port %d",
       portid2str(portid), lid, sw->fdb[lid % 64]);
 return sw->fdb[lid % 64];
}
