
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ Type; } ;
typedef TYPE_1__ VGLBitmap ;


 scalar_t__ MEMBUF ;
 TYPE_1__* VGLDisplay ;
 int VGLMouseFreeze () ;
 int VGLMouseUnFreeze () ;
 TYPE_1__ VGLVDisplay ;
 int __VGLBitmapCopy (TYPE_1__*,int,int,TYPE_1__*,int,int,int,int) ;

int
VGLBitmapCopy(VGLBitmap *src, int srcx, int srcy,
       VGLBitmap *dst, int dstx, int dsty, int width, int hight)
{
  int error;

  if (hight < 0)
    return -1;
  if (src == VGLDisplay)
    src = &VGLVDisplay;
  if (src->Type != MEMBUF)
    return -1;
  if (dst == VGLDisplay) {
    VGLMouseFreeze();
    __VGLBitmapCopy(src, srcx, srcy, &VGLVDisplay, dstx, dsty, width, hight);
    error = __VGLBitmapCopy(src, srcx, srcy, &VGLVDisplay, dstx, dsty,
                            width, hight);
    if (error != 0)
      return error;
    src = &VGLVDisplay;
    srcx = dstx;
    srcy = dsty;
  } else if (dst->Type != MEMBUF)
    return -1;
  error = __VGLBitmapCopy(src, srcx, srcy, dst, dstx, dsty, width, -hight);
  if (dst == VGLDisplay)
    VGLMouseUnFreeze();
  return error;
}
