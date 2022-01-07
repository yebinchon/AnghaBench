
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct rar* window; } ;
struct rar {int ppmd7_context; TYPE_1__ lzss; struct rar* unp_buffer; struct rar* dbo; struct rar* filename_save; struct rar* filename; } ;
struct archive_read {TYPE_2__* format; } ;
struct TYPE_6__ {int (* Ppmd7_Free ) (int *) ;} ;
struct TYPE_5__ {int * data; } ;


 int ARCHIVE_OK ;
 TYPE_3__ __archive_ppmd7_functions ;
 int free (struct rar*) ;
 int free_codes (struct archive_read*) ;
 int stub1 (int *) ;

__attribute__((used)) static int
archive_read_format_rar_cleanup(struct archive_read *a)
{
  struct rar *rar;

  rar = (struct rar *)(a->format->data);
  free_codes(a);
  free(rar->filename);
  free(rar->filename_save);
  free(rar->dbo);
  free(rar->unp_buffer);
  free(rar->lzss.window);
  __archive_ppmd7_functions.Ppmd7_Free(&rar->ppmd7_context);
  free(rar);
  (a->format->data) = ((void*)0);
  return (ARCHIVE_OK);
}
