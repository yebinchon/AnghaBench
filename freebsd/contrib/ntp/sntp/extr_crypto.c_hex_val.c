
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
hex_val(
 unsigned char x
 )
{
 int val;

 if ('0' <= x && x <= '9')
  val = x - '0';
 else if ('a' <= x && x <= 'f')
  val = x - 'a' + 0xa;
 else if ('A' <= x && x <= 'F')
  val = x - 'A' + 0xA;
 else
  val = -1;

 return val;
}
