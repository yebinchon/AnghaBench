
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_wstring {int dummy; } ;


 int __archive_errx (int,char*) ;
 struct archive_wstring* archive_wstring_append (struct archive_wstring*,int *,int) ;

struct archive_wstring *
archive_wstrappend_wchar(struct archive_wstring *as, wchar_t c)
{
 if ((as = archive_wstring_append(as, &c, 1)) == ((void*)0))
  __archive_errx(1, "Out of memory");
 return (as);
}
