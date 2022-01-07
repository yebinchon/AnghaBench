
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OF_read (int ,unsigned char*,int) ;
 int saved_char ;
 int stdin ;

int
ofw_cons_poll()
{
 unsigned char ch;

 if (saved_char != -1)
  return 1;

 if (OF_read(stdin, &ch, 1) > 0) {
  saved_char = ch;
  return 1;
 }

 return 0;
}
