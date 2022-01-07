
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int rc_cap_mask ;
struct TYPE_6__ {size_t lid; int sl; } ;
typedef TYPE_1__ ib_portid_t ;
struct TYPE_7__ {int pma_query_failures; } ;


 int CLASS_PORT_INFO ;
 int IBWARN (char*,char*,int ,int) ;
 int ibd_timeout ;
 int ibmad_port ;
 int * lid2sl_table ;
 int memcpy (int *,int *,int) ;
 int pma_query_via (int *,TYPE_1__*,int,int ,int ,int ) ;
 int portid2str (TYPE_1__*) ;
 TYPE_2__ summary ;

__attribute__((used)) static int query_cap_mask(ib_portid_t * portid, char *node_name, int portnum,
     uint16_t * cap_mask)
{
 uint8_t pc[1024] = { 0 };
 uint16_t rc_cap_mask;

 portid->sl = lid2sl_table[portid->lid];


 if (!pma_query_via(pc, portid, portnum, ibd_timeout, CLASS_PORT_INFO,
      ibmad_port)) {
  IBWARN("classportinfo query failed on %s, %s port %d",
         node_name, portid2str(portid), portnum);
  summary.pma_query_failures++;
  return -1;
 }


 memcpy(&rc_cap_mask, pc + 2, sizeof(rc_cap_mask));

 *cap_mask = rc_cap_mask;
 return 0;
}
