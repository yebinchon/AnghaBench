
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int pc ;
typedef int ib_portid_t ;
struct TYPE_2__ {int pma_query_failures; } ;


 int IBWARN (char*,char const*,char*,int ,int) ;
 int ibd_timeout ;
 int ibmad_port ;
 int mad_decode_field (int *,int,void*) ;
 char* mad_field_name (int) ;
 int memset (int *,int ,int) ;
 int pma_query_via (int *,int *,int,int ,int ,int ) ;
 int portid2str (int *) ;
 scalar_t__ snprintf (char*,size_t,char*,char*,int) ;
 TYPE_1__ summary ;

__attribute__((used)) static int query_and_dump(char *buf, size_t size, ib_portid_t * portid,
     char *node_name, int portnum,
     const char *attr_name, uint16_t attr_id,
     int start_field, int end_field)
{
 uint8_t pc[1024];
 uint32_t val = 0;
 int i, n;

 memset(pc, 0, sizeof(pc));

 if (!pma_query_via(pc, portid, portnum, ibd_timeout, attr_id,
      ibmad_port)) {
  IBWARN("%s query failed on %s, %s port %d", attr_name,
         node_name, portid2str(portid), portnum);
  summary.pma_query_failures++;
  return 0;
 }

 for (n = 0, i = start_field; i < end_field; i++) {
  mad_decode_field(pc, i, (void *)&val);
  if (val)
   n += snprintf(buf + n, size - n, " [%s == %u]",
          mad_field_name(i), val);
 }

 return n;
}
