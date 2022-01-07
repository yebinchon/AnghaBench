
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shar {int quoted_name; int work; struct shar* last_dir; int entry; } ;
struct archive_write {int * format_data; } ;


 int ARCHIVE_OK ;
 int archive_entry_free (int ) ;
 int archive_string_free (int *) ;
 int free (struct shar*) ;

__attribute__((used)) static int
archive_write_shar_free(struct archive_write *a)
{
 struct shar *shar;

 shar = (struct shar *)a->format_data;
 if (shar == ((void*)0))
  return (ARCHIVE_OK);

 archive_entry_free(shar->entry);
 free(shar->last_dir);
 archive_string_free(&(shar->work));
 archive_string_free(&(shar->quoted_name));
 free(shar);
 a->format_data = ((void*)0);
 return (ARCHIVE_OK);
}
