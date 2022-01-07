
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct flagnames_struct {char const* name; int flag; } ;



__attribute__((used)) static const char *
format_flag(uint32_t *var, const struct flagnames_struct *flags)
{

 for (; flags->name != ((void*)0); flags++) {
  if ((flags->flag & *var) == 0)
   continue;

  *var &= ~flags->flag;
  return (flags->name);
 }

 return (((void*)0));
}
