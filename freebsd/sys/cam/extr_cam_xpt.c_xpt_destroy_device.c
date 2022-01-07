
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_ed {int device_mtx; } ;


 int M_CAMDEV ;
 int free (struct cam_ed*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;

__attribute__((used)) static void
xpt_destroy_device(void *context, int pending)
{
 struct cam_ed *device = context;

 mtx_lock(&device->device_mtx);
 mtx_destroy(&device->device_mtx);
 free(device, M_CAMDEV);
}
