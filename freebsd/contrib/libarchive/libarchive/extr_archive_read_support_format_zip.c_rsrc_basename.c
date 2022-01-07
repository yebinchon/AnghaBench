
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,char,size_t) ;

__attribute__((used)) static const char *
rsrc_basename(const char *name, size_t name_length)
{
 const char *s, *r;

 r = s = name;
 for (;;) {
  s = memchr(s, '/', name_length - (s - name));
  if (s == ((void*)0))
   break;
  r = ++s;
 }
 return (r);
}
