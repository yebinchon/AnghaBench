
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int byte ;
struct TYPE_6__ {int PixelBytes; int VXsize; int VYsize; int * Bitmap; } ;
typedef TYPE_1__ VGLBitmap ;


 TYPE_1__* VGLDisplay ;
 int VGLMouseMerge (int,int,int,int *) ;
 scalar_t__ VGLMouseOverlap (int,int,int,int) ;
 int WriteVerticalLine (TYPE_1__*,int,int,int,int *) ;
 int * alloca (int) ;
 int bcopy (int *,int *,int) ;

int
__VGLBitmapCopy(VGLBitmap *src, int srcx, int srcy,
       VGLBitmap *dst, int dstx, int dsty, int width, int hight)
{
  byte *buffer, *p;
  int mousemerge, srcline, dstline, yend, yextra, ystep;

  mousemerge = 0;
  if (hight < 0) {
    hight = -hight;
    mousemerge = (dst == VGLDisplay &&
    VGLMouseOverlap(dstx, dsty, width, hight));
    if (mousemerge)
      buffer = alloca(width*src->PixelBytes);
  }
  if (srcx>src->VXsize || srcy>src->VYsize
 || dstx>dst->VXsize || dsty>dst->VYsize)
    return -1;
  if (srcx < 0) {
    width=width+srcx; dstx-=srcx; srcx=0;
  }
  if (srcy < 0) {
    hight=hight+srcy; dsty-=srcy; srcy=0;
  }
  if (dstx < 0) {
    width=width+dstx; srcx-=dstx; dstx=0;
  }
  if (dsty < 0) {
    hight=hight+dsty; srcy-=dsty; dsty=0;
  }
  if (srcx+width > src->VXsize)
     width=src->VXsize-srcx;
  if (srcy+hight > src->VYsize)
     hight=src->VYsize-srcy;
  if (dstx+width > dst->VXsize)
     width=dst->VXsize-dstx;
  if (dsty+hight > dst->VYsize)
     hight=dst->VYsize-dsty;
  if (width < 0 || hight < 0)
     return -1;
  yend = srcy + hight;
  yextra = 0;
  ystep = 1;
  if (src->Bitmap == dst->Bitmap && srcy < dsty) {
    yend = srcy - 1;
    yextra = hight - 1;
    ystep = -1;
  }
  for (srcline = srcy + yextra, dstline = dsty + yextra; srcline != yend;
       srcline += ystep, dstline += ystep) {
    p = src->Bitmap+(srcline*src->VXsize+srcx)*dst->PixelBytes;
    if (mousemerge && VGLMouseOverlap(dstx, dstline, width, 1)) {
      bcopy(p, buffer, width*src->PixelBytes);
      p = buffer;
      VGLMouseMerge(dstx, dstline, width, p);
    }
    WriteVerticalLine(dst, dstx, dstline, width, p);
  }
  return 0;
}
