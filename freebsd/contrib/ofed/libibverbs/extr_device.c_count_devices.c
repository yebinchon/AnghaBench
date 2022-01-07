
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int device_list ;
 int ibverbs_init (int *) ;
 int num_devices ;

__attribute__((used)) static void count_devices(void)
{
 num_devices = ibverbs_init(&device_list);
}
