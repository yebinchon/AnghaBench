
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t csize; int * cbuff; } ;
typedef TYPE_1__ ct_buffer_t ;


 int el_free (int *) ;
 void* el_realloc (int *,int) ;

__attribute__((used)) static int
ct_conv_cbuff_resize(ct_buffer_t *conv, size_t csize)
{
 void *p;

 if (csize <= conv->csize)
  return 0;

 conv->csize = csize;

 p = el_realloc(conv->cbuff, conv->csize * sizeof(*conv->cbuff));
 if (p == ((void*)0)) {
  conv->csize = 0;
  el_free(conv->cbuff);
  conv->cbuff = ((void*)0);
  return -1;
 }
 conv->cbuff = p;
 return 0;
}
