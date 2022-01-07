
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_long ;
typedef int byte ;


 int VGLrgbToNative (int,int,int) ;

u_long
VGLrgb332ToNative(byte c)
{
  uint16_t r, g, b;


  r = ((c & 0xe0) >> 5) * 0xffff / 7;
  g = ((c & 0x1c) >> 2) * 0xffff / 7;
  b = ((c & 0x03) >> 0) * 0xffff / 3;

  return VGLrgbToNative(r, g, b);
}
