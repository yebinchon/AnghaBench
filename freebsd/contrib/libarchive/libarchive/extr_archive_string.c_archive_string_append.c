
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {size_t length; scalar_t__* s; } ;


 int * archive_string_ensure (struct archive_string*,size_t) ;
 int memmove (scalar_t__*,char const*,size_t) ;

__attribute__((used)) static struct archive_string *
archive_string_append(struct archive_string *as, const char *p, size_t s)
{
 if (archive_string_ensure(as, as->length + s + 1) == ((void*)0))
  return (((void*)0));
 if (s)
  memmove(as->s + as->length, p, s);
 as->length += s;
 as->s[as->length] = 0;
 return (as);
}
