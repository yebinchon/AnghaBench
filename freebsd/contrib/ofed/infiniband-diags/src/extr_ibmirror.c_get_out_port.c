
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_portid_t ;


 int IBEXIT (char*) ;
 int IB_ATTR_LINEARFORWTBL ;
 int IB_SMP_DATA_SIZE ;
 int* buf ;
 int mirror_dlid ;
 int mirror_dport ;
 int smp_query_via (int*,int *,int ,int,int ,int ) ;
 int srcport ;

int get_out_port(ib_portid_t* portid)
{
 int block;
 int offset;

 if (mirror_dlid) {
  block = mirror_dlid / IB_SMP_DATA_SIZE;
  offset = mirror_dlid - block * IB_SMP_DATA_SIZE;

  if (!smp_query_via(buf, portid, IB_ATTR_LINEARFORWTBL, block, 0, srcport))
   IBEXIT("linear forwarding table get failed");
  block = mirror_dlid / IB_SMP_DATA_SIZE;
  offset = mirror_dlid - block * IB_SMP_DATA_SIZE;
  return buf[offset];
 }
 else
  return mirror_dport;
}
