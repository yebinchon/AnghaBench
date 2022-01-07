
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;



__attribute__((used)) static ssize_t
cab_strnlen(const unsigned char *p, size_t maxlen)
{
 size_t i;

 for (i = 0; i <= maxlen; i++) {
  if (p[i] == 0)
   break;
 }
 if (i > maxlen)
  return (-1);
 return ((ssize_t)i);
}
