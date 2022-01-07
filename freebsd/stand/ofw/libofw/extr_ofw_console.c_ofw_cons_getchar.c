
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OF_read (int ,unsigned char*,int) ;
 int saved_char ;
 int stdin ;

int
ofw_cons_getchar()
{
 unsigned char ch = '\0';
 int l;

 if (saved_char != -1) {
  l = saved_char;
  saved_char = -1;
  return l;
 }





 if (OF_read(stdin, &ch, 1) > 0 && ch != '\0')
  return (ch);

 return (-1);
}
