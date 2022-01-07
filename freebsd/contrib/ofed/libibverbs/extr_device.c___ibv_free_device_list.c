
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_device {int dummy; } ;


 int free (struct ibv_device**) ;

void __ibv_free_device_list(struct ibv_device **list)
{
 free(list);
}
