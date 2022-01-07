
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int va_window_size; } ;


 int CONS_SETWINORG ;
 TYPE_1__ VGLAdpInfo ;
 unsigned int VGLCurWindow ;
 int ioctl (int ,int ,unsigned int) ;

int
VGLSetSegment(unsigned int offset)
{
  if (offset/VGLAdpInfo.va_window_size != VGLCurWindow) {
    ioctl(0, CONS_SETWINORG, offset);
    VGLCurWindow = offset/VGLAdpInfo.va_window_size;
  }
  return (offset%VGLAdpInfo.va_window_size);
}
