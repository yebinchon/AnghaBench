
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {int archive; TYPE_1__* format; } ;
struct ar {size_t strtab_size; char* strtab; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int EINVAL ;
 int archive_set_error (int *,int ,char*) ;
 int free (char*) ;

__attribute__((used)) static int
ar_parse_gnu_filename_table(struct archive_read *a)
{
 struct ar *ar;
 char *p;
 size_t size;

 ar = (struct ar*)(a->format->data);
 size = ar->strtab_size;

 for (p = ar->strtab; p < ar->strtab + size - 1; ++p) {
  if (*p == '/') {
   *p++ = '\0';
   if (*p != '\n')
    goto bad_string_table;
   *p = '\0';
  }
 }




 if (p != ar->strtab + size && *p != '\n' && *p != '`')
  goto bad_string_table;


 ar->strtab[size - 1] = '\0';

 return (ARCHIVE_OK);

bad_string_table:
 archive_set_error(&a->archive, EINVAL,
     "Invalid string table");
 free(ar->strtab);
 ar->strtab = ((void*)0);
 return (ARCHIVE_FATAL);
}
