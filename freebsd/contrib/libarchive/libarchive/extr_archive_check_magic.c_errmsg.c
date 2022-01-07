
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 size_t strlen (char const*) ;
 scalar_t__ write (int,char const*,size_t) ;

__attribute__((used)) static void
errmsg(const char *m)
{
 size_t s = strlen(m);
 ssize_t written;

 while (s > 0) {
  written = write(2, m, strlen(m));
  if (written <= 0)
   return;
  m += written;
  s -= written;
 }
}
