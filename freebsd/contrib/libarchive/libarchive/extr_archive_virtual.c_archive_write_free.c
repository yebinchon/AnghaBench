
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_free (struct archive*) ;

int
archive_write_free(struct archive *a)
{
 return archive_free(a);
}
