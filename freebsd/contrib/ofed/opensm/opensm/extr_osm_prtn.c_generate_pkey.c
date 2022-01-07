
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int prtn_pkey_tbl; } ;
typedef TYPE_1__ osm_subn_t ;
typedef int cl_qmap_t ;


 int IB_DEFAULT_PARTIAL_PKEY ;
 int cl_hton16 (int) ;
 int cl_ntoh16 (int ) ;
 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_get (int *,int) ;
 int global_pkey_counter ;

__attribute__((used)) static uint16_t generate_pkey(osm_subn_t * p_subn)
{
 uint16_t pkey;

 cl_qmap_t *m = &p_subn->prtn_pkey_tbl;
 while (global_pkey_counter < cl_ntoh16(IB_DEFAULT_PARTIAL_PKEY) - 1) {
  pkey = ++global_pkey_counter;
  pkey = cl_hton16(pkey);
  if (cl_qmap_get(m, pkey) == cl_qmap_end(m))
   return pkey;
 }
 return 0;
}
