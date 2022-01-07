
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; } ;
typedef TYPE_1__ video_display_start_t ;
struct TYPE_6__ {scalar_t__ Xsize; scalar_t__ VXsize; scalar_t__ Ysize; scalar_t__ VYsize; scalar_t__ Type; int Xorigin; int Yorigin; } ;
typedef TYPE_2__ VGLBitmap ;


 int FBIO_SETDISPSTART ;
 scalar_t__ MEMBUF ;
 int fprintf (int ,char*,int,int) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int stderr ;

int
VGLPanScreen(VGLBitmap *object, int x, int y)
{
  video_display_start_t origin;

  if (x < 0 || x + object->Xsize > object->VXsize
      || y < 0 || y + object->Ysize > object->VYsize)
    return -1;
  if (object->Type == MEMBUF)
    return 0;
  origin.x = x;
  origin.y = y;
  if (ioctl(0, FBIO_SETDISPSTART, &origin))
    return -1;
  object->Xorigin = x;
  object->Yorigin = y;





  return 0;
}
