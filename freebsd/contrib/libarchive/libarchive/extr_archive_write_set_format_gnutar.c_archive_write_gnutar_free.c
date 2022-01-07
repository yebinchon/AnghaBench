
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnutar {int dummy; } ;
struct archive_write {int * format_data; } ;


 int ARCHIVE_OK ;
 int free (struct gnutar*) ;

__attribute__((used)) static int
archive_write_gnutar_free(struct archive_write *a)
{
 struct gnutar *gnutar;

 gnutar = (struct gnutar *)a->format_data;
 free(gnutar);
 a->format_data = ((void*)0);
 return (ARCHIVE_OK);
}
