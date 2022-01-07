
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lha {int end_of_entry_cleanup; int setflag; scalar_t__ crc; scalar_t__ entry_crc_calculated; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_WARN ;
 int CRC_IS_SET ;
 int archive_set_error (int *,int ,char*) ;

__attribute__((used)) static int
lha_end_of_entry(struct archive_read *a)
{
 struct lha *lha = (struct lha *)(a->format->data);
 int r = ARCHIVE_EOF;

 if (!lha->end_of_entry_cleanup) {
  if ((lha->setflag & CRC_IS_SET) &&
      lha->crc != lha->entry_crc_calculated) {
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "LHa data CRC error");
   r = ARCHIVE_WARN;
  }


  lha->end_of_entry_cleanup = 1;
 }
 return (r);
}
