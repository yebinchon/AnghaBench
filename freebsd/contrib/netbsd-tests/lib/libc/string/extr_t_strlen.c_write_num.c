
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write (int,char*,int) ;

__attribute__((used)) static void
write_num(int val)
{
 char buf[20];
 int i;

 for (i = sizeof buf; --i >= 0;) {
  buf[i] = '0' + val % 10;
  val /= 10;
  if (val == 0) {
   write(2, buf + i, sizeof buf - i);
   return;
  }
 }
 write(2, "overflow", 8);
}
