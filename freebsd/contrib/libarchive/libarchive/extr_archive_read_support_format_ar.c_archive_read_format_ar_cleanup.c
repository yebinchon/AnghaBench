
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {TYPE_1__* format; } ;
struct ar {struct ar* strtab; } ;
struct TYPE_2__ {int * data; } ;


 int ARCHIVE_OK ;
 int free (struct ar*) ;

__attribute__((used)) static int
archive_read_format_ar_cleanup(struct archive_read *a)
{
 struct ar *ar;

 ar = (struct ar *)(a->format->data);
 free(ar->strtab);
 free(ar);
 (a->format->data) = ((void*)0);
 return (ARCHIVE_OK);
}
