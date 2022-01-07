
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int archive_string_conversion_free (struct archive*) ;

int
__archive_clean(struct archive *a)
{
 archive_string_conversion_free(a);
 return (ARCHIVE_OK);
}
