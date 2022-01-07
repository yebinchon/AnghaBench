
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_wstring {int dummy; } ;


 struct archive_wstring* archive_wstrncat (struct archive_wstring*,int const*,int) ;

struct archive_wstring *
archive_wstrcat(struct archive_wstring *as, const wchar_t *p)
{

 return archive_wstrncat(as, p, 0x1000000);
}
