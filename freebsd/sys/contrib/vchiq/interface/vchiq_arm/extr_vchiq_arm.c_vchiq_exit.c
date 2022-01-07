
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_dev (int *) ;
 int g_state ;
 int * vchiq_cdev ;
 int vchiq_platform_exit (int *) ;

void
vchiq_exit(void)
{

 vchiq_platform_exit(&g_state);
 if (vchiq_cdev) {
  destroy_dev(vchiq_cdev);
  vchiq_cdev = ((void*)0);
 }
}
