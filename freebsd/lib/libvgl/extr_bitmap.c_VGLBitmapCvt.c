
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {int VXsize; int VYsize; int PixelBytes; int* Bitmap; } ;
typedef TYPE_1__ VGLBitmap ;


 int VGLrgb332ToNative (int) ;
 int bcopy (int*,int*,int) ;

void
VGLBitmapCvt(VGLBitmap *src, VGLBitmap *dst)
{
  u_long color;
  int dstpos, i, pb, size, srcpb, srcpos;

  size = src->VXsize * src->VYsize;
  srcpb = src->PixelBytes;
  if (srcpb <= 0)
    srcpb = 1;
  pb = dst->PixelBytes;
  if (pb == srcpb) {
    bcopy(src->Bitmap, dst->Bitmap, size * pb);
    return;
  }
  if (srcpb != 1)
    return;
  for (srcpos = dstpos = 0; srcpos < size; srcpos++) {
    color = VGLrgb332ToNative(src->Bitmap[srcpos]);
    for (i = 0; i < pb; i++, color >>= 8)
        dst->Bitmap[dstpos++] = color;
  }
}
