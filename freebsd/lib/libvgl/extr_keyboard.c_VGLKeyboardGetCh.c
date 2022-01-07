
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int ,unsigned char*,int) ;

int
VGLKeyboardGetCh()
{
  unsigned char ch = 0;

  read (0, &ch, 1);
  return (int)ch;
}
