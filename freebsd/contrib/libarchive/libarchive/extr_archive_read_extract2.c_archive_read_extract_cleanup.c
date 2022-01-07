
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {TYPE_1__* extract; } ;
struct TYPE_2__ {int * ad; } ;


 int ARCHIVE_OK ;
 int archive_write_free (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static int
archive_read_extract_cleanup(struct archive_read *a)
{
 int ret = ARCHIVE_OK;

 if (a->extract->ad != ((void*)0)) {
  ret = archive_write_free(a->extract->ad);
 }
 free(a->extract);
 a->extract = ((void*)0);
 return (ret);
}
