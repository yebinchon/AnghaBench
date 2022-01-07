
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {unsigned int has_arg; scalar_t__ val; scalar_t__ name; } ;



__attribute__((used)) static void make_str_opts(const struct option *o, char *p, unsigned size)
{
 unsigned i, n = 0;

 for (n = 0; o->name && n + 2 + o->has_arg < size; o++) {
  p[n++] = (char)o->val;
  for (i = 0; i < (unsigned)o->has_arg; i++)
   p[n++] = ':';
 }
 p[n] = '\0';
}
