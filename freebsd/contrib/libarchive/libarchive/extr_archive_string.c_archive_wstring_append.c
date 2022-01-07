
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_wstring {size_t length; scalar_t__* s; } ;


 int * archive_wstring_ensure (struct archive_wstring*,size_t) ;
 int wmemmove (scalar_t__*,int const*,size_t) ;

__attribute__((used)) static struct archive_wstring *
archive_wstring_append(struct archive_wstring *as, const wchar_t *p, size_t s)
{
 if (archive_wstring_ensure(as, as->length + s + 1) == ((void*)0))
  return (((void*)0));
 if (s)
  wmemmove(as->s + as->length, p, s);
 as->length += s;
 as->s[as->length] = 0;
 return (as);
}
