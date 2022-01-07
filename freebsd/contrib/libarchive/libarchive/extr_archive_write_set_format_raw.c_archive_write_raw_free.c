
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw {int dummy; } ;
struct archive_write {int * format_data; } ;


 int ARCHIVE_OK ;
 int free (struct raw*) ;

__attribute__((used)) static int
archive_write_raw_free(struct archive_write *a)
{
 struct raw *raw;

 raw = (struct raw *)a->format_data;
 free(raw);
 a->format_data = ((void*)0);
 return (ARCHIVE_OK);
}
