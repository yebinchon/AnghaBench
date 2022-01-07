
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_slvl_table_t ;
typedef int ib_portid_t ;


 int IBEXIT (char*) ;
 int IB_ATTR_SLVL_TABLE ;
 scalar_t__ buf ;
 int ib_slvl_table_get (int *,int) ;
 int mirror_sl ;
 int printf (char*,int,int) ;
 int smp_query_via (scalar_t__,int *,int ,int,int ,int ) ;
 int srcport ;

int get_mirror_vl(ib_portid_t* portid, int outport)
{
 ib_slvl_table_t * p_slvl_tbl;
 int portnum;
 int vl;


 portnum = (1 << 8) | outport;


 if (!smp_query_via(buf, portid, IB_ATTR_SLVL_TABLE, portnum, 0, srcport))
  IBEXIT("slvl query failed");

 p_slvl_tbl = (ib_slvl_table_t *) buf;
 vl = ib_slvl_table_get(p_slvl_tbl, mirror_sl);
 printf("mirror_sl %d, mirror_vl %d\n", mirror_sl, vl);
 return vl;
}
