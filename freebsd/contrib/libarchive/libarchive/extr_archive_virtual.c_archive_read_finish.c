
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_read_free (struct archive*) ;

int
archive_read_finish(struct archive *a)
{
 return archive_read_free(a);
}
