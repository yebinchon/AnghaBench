
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct cam_devq {int send_queue; } ;


 int camq_resize (int *,int) ;

u_int32_t
cam_devq_resize(struct cam_devq *camq, int devices)
{
 u_int32_t retval;

 retval = camq_resize(&camq->send_queue, devices);
 return (retval);
}
