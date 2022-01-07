
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strstr(const char *s, const char *t)
{
    do {
 const char *ss = s;
 const char *tt = t;

 do
     if (*tt == '\0')
  return (s);
 while (*ss++ == *tt++);
    } while (*s++ != '\0');
    return (((void*)0));
}
