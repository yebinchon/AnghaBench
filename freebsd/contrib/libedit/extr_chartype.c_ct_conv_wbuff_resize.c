
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t wsize; int * wbuff; } ;
typedef TYPE_1__ ct_buffer_t ;


 int el_free (int *) ;
 void* el_realloc (int *,int) ;

__attribute__((used)) static int
ct_conv_wbuff_resize(ct_buffer_t *conv, size_t wsize)
{
 void *p;

 if (wsize <= conv->wsize)
  return 0;

 conv->wsize = wsize;

 p = el_realloc(conv->wbuff, conv->wsize * sizeof(*conv->wbuff));
 if (p == ((void*)0)) {
  conv->wsize = 0;
  el_free(conv->wbuff);
  conv->wbuff = ((void*)0);
  return -1;
 }
 conv->wbuff = p;
 return 0;
}
