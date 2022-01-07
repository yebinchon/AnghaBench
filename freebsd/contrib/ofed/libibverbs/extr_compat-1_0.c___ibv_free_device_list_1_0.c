
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** ibv_device_1_0 ;


 int free (int ******) ;
 int ibv_free_device_list (void*) ;

void __ibv_free_device_list_1_0(struct ibv_device_1_0 **list)
{
 struct ibv_device_1_0 **l = list;

 while (*l) {
  free(*l);
  ++l;
 }

 ibv_free_device_list((void *) list[-1]);
 free(list - 1);
}
