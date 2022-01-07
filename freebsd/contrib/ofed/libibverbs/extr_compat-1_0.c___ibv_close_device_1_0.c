
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_context_1_0 {int real_context; } ;


 int free (struct ibv_context_1_0*) ;
 int ibv_close_device (int ) ;

int __ibv_close_device_1_0(struct ibv_context_1_0 *context)
{
 int ret;

 ret = ibv_close_device(context->real_context);
 if (ret)
  return ret;

 free(context);
 return 0;
}
