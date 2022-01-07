
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* context; int * callback; } ;
struct pt_image {TYPE_1__ readmem; } ;
typedef int read_memory_callback_t ;


 int pte_invalid ;

int pt_image_set_callback(struct pt_image *image,
     read_memory_callback_t *callback, void *context)
{
 if (!image)
  return -pte_invalid;

 image->readmem.callback = callback;
 image->readmem.context = context;

 return 0;
}
