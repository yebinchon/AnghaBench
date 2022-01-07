
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ofw_write (int ,char*,int) ;
 int stdouth ;

__attribute__((used)) static int
putchar(char c, void *arg)
{
 char buf;

 if (c == '\n') {
  buf = '\r';
  ofw_write(stdouth, &buf, 1);
 }
 buf = c;
 ofw_write(stdouth, &buf, 1);
 return (1);
}
