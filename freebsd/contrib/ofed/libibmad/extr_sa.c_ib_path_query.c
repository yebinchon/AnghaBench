
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ibmad_gid_t ;
typedef int ib_portid_t ;


 int ib_path_query_via (int ,int ,int ,int *,void*) ;
 int ibmp ;

int ib_path_query(ibmad_gid_t srcgid, ibmad_gid_t destgid, ib_portid_t * sm_id,
    void *buf)
{
 return ib_path_query_via(ibmp, srcgid, destgid, sm_id, buf);
}
