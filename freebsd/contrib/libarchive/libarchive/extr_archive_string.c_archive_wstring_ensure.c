
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_wstring {int dummy; } ;
struct archive_string {int dummy; } ;


 scalar_t__ archive_string_ensure (struct archive_string*,size_t) ;

struct archive_wstring *
archive_wstring_ensure(struct archive_wstring *as, size_t s)
{
 return (struct archive_wstring *)
  archive_string_ensure((struct archive_string *)as,
     s * sizeof(wchar_t));
}
