
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct rar5 {int qlist_offset; int rr_offset; } ;
struct archive_read {int dummy; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int read_var (struct archive_read*,int*,int *) ;

__attribute__((used)) static int process_main_locator_extra_block(struct archive_read* a,
    struct rar5* rar)
{
 uint64_t locator_flags;

 if(!read_var(a, &locator_flags, ((void*)0))) {
  return ARCHIVE_EOF;
 }

 enum LOCATOR_FLAGS {
  QLIST = 0x01, RECOVERY = 0x02,
 };

 if(locator_flags & QLIST) {
  if(!read_var(a, &rar->qlist_offset, ((void*)0))) {
   return ARCHIVE_EOF;
  }


 }

 if(locator_flags & RECOVERY) {
  if(!read_var(a, &rar->rr_offset, ((void*)0))) {
   return ARCHIVE_EOF;
  }


 }

 return ARCHIVE_OK;
}
