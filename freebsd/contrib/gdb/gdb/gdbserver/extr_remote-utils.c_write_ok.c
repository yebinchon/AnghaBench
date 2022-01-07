
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
write_ok (char *buf)
{
  buf[0] = 'O';
  buf[1] = 'K';
  buf[2] = '\0';
}
