
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ustar {int dummy; } ;
struct archive_write {int * format_data; } ;


 int ARCHIVE_OK ;
 int free (struct ustar*) ;

__attribute__((used)) static int
archive_write_ustar_free(struct archive_write *a)
{
 struct ustar *ustar;

 ustar = (struct ustar *)a->format_data;
 free(ustar);
 a->format_data = ((void*)0);
 return (ARCHIVE_OK);
}
