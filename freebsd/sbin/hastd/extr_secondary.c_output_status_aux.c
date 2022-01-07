
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nv {int dummy; } ;


 scalar_t__ hio_disk_list_size ;
 scalar_t__ hio_free_list_size ;
 scalar_t__ hio_send_list_size ;
 int nv_add_uint64 (struct nv*,int ,char*) ;

__attribute__((used)) static void
output_status_aux(struct nv *nvout)
{

 nv_add_uint64(nvout, (uint64_t)hio_free_list_size, "idle_queue_size");
 nv_add_uint64(nvout, (uint64_t)hio_disk_list_size, "local_queue_size");
 nv_add_uint64(nvout, (uint64_t)hio_send_list_size, "send_queue_size");
}
