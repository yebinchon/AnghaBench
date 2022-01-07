
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
struct archive_wstring {int dummy; } ;


 int __archive_errx (int,char*) ;
 struct archive_wstring* archive_wstring_append (struct archive_wstring*,scalar_t__ const*,size_t) ;

struct archive_wstring *
archive_wstrncat(struct archive_wstring *as, const wchar_t *p, size_t n)
{
 size_t s;
 const wchar_t *pp;


 s = 0;
 pp = p;
 while (s < n && *pp) {
  pp++;
  s++;
 }
 if ((as = archive_wstring_append(as, p, s)) == ((void*)0))
  __archive_errx(1, "Out of memory");
 return (as);
}
