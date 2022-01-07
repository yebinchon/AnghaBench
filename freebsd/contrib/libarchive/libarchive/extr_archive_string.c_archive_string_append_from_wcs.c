
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_string {int dummy; } ;


 int ENOSYS ;
 int errno ;

int
archive_string_append_from_wcs(struct archive_string *as,
    const wchar_t *w, size_t len)
{
 (void)as;
 (void)w;
 (void)len;
 errno = ENOSYS;
 return (-1);
}
