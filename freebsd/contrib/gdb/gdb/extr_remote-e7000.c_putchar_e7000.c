
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int e7000_desc ;
 int serial_write (int ,char*,int) ;

__attribute__((used)) static void
putchar_e7000 (int x)
{
  char b[1];

  b[0] = x;
  serial_write (e7000_desc, b, 1);
}
