
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
fill(char *buf, size_t len, char x)
{
 size_t i;

 for (i = 0; i < len; i++)
  buf[i] = x;
}
