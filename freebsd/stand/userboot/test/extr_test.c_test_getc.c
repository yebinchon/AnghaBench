
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int ,char*,int) ;

int
test_getc(void *arg)
{
 char c;

 if (read(0, &c, 1) == 1)
  return c;
 return -1;
}
