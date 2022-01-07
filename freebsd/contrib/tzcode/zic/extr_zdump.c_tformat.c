
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double time_t ;



__attribute__((used)) static const char *
tformat(void)
{
 if (0.5 == (time_t) 0.5) {
  if (sizeof (time_t) > sizeof (double))
   return "%Lg";
  return "%g";
 }
 if (0 > (time_t) -1) {
  if (sizeof (time_t) > sizeof (long))
   return "%lld";
  if (sizeof (time_t) > sizeof (int))
   return "%ld";
  return "%d";
 }
 if (sizeof (time_t) > sizeof (unsigned long))
  return "%llu";
 if (sizeof (time_t) > sizeof (unsigned int))
  return "%lu";
 return "%u";
}
