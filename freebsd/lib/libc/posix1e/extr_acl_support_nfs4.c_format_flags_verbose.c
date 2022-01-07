
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct flagnames_struct {int dummy; } ;


 int assert (int) ;
 char* format_flag (int *,struct flagnames_struct const*) ;
 scalar_t__ snprintf (char*,size_t,char*,char const*) ;

__attribute__((used)) static int
format_flags_verbose(char *str, size_t size, uint32_t var,
    const struct flagnames_struct *flags)
{
 size_t off = 0;
 const char *tmp;

 while ((tmp = format_flag(&var, flags)) != ((void*)0)) {
  off += snprintf(str + off, size - off, "%s/", tmp);
  assert (off < size);
 }


 if (off > 0) {
  off--;

  assert(str[off] == '/');
 }

 str[off] = '\0';

 return (0);
}
