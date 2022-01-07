
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
has_non_ASCII(const char *_p)
{
 const unsigned char *p = (const unsigned char *)_p;

 if (p == ((void*)0))
  return (1);
 while (*p != '\0' && *p < 128)
  p++;
 return (*p != '\0');
}
