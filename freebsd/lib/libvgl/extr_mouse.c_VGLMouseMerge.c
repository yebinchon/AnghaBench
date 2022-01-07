
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
struct TYPE_6__ {int PixelBytes; } ;
struct TYPE_5__ {int VXsize; scalar_t__* Bitmap; } ;
struct TYPE_4__ {int * Bitmap; } ;


 TYPE_3__* VGLDisplay ;
 TYPE_2__* VGLMouseAndMask ;
 TYPE_1__* VGLMouseOrMask ;
 int VGLMouseXpos ;
 int VGLMouseYpos ;
 int bcopy (int *,int *,int) ;

void
VGLMouseMerge(int x, int y, int width, byte *line)
{
  int pos, x1, xend, xstart;

  xstart = x;
  if (xstart < VGLMouseXpos)
    xstart = VGLMouseXpos;
  xend = x + width;
  if (xend > VGLMouseXpos + VGLMouseAndMask->VXsize)
    xend = VGLMouseXpos + VGLMouseAndMask->VXsize;
  for (x1 = xstart; x1 < xend; x1++) {
    pos = (y - VGLMouseYpos) * VGLMouseAndMask->VXsize + x1 - VGLMouseXpos;
    if (VGLMouseAndMask->Bitmap[pos])
      bcopy(&VGLMouseOrMask->Bitmap[pos * VGLDisplay->PixelBytes],
            &line[(x1 - x) * VGLDisplay->PixelBytes], VGLDisplay->PixelBytes);
  }
}
