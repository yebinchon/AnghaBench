
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
cmpseg(size_t len, const char *str, size_t len2, const char *str2)
{

 if (len == len2) {
  if ((!str && !str2) || (str && str2 && !strcmp(str, str2)))
   return (0);
 }
 return (-1);
}
