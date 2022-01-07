
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry_linkresolver {void* strategy; } ;


 void* ARCHIVE_ENTRY_LINKIFY_LIKE_MTREE ;
 void* ARCHIVE_ENTRY_LINKIFY_LIKE_NEW_CPIO ;
 void* ARCHIVE_ENTRY_LINKIFY_LIKE_OLD_CPIO ;
 void* ARCHIVE_ENTRY_LINKIFY_LIKE_TAR ;


 int ARCHIVE_FORMAT_BASE_MASK ;
void
archive_entry_linkresolver_set_strategy(struct archive_entry_linkresolver *res,
    int fmt)
{
 int fmtbase = fmt & ARCHIVE_FORMAT_BASE_MASK;

 switch (fmtbase) {
 case 138:
 case 137:
 case 128:
  res->strategy = ARCHIVE_ENTRY_LINKIFY_LIKE_OLD_CPIO;
  break;
 case 136:
  switch (fmt) {
  case 134:
  case 135:
   res->strategy = ARCHIVE_ENTRY_LINKIFY_LIKE_NEW_CPIO;
   break;
  default:
   res->strategy = ARCHIVE_ENTRY_LINKIFY_LIKE_OLD_CPIO;
   break;
  }
  break;
 case 132:
  res->strategy = ARCHIVE_ENTRY_LINKIFY_LIKE_MTREE;
  break;
 case 133:
 case 131:
 case 130:
 case 129:
  res->strategy = ARCHIVE_ENTRY_LINKIFY_LIKE_TAR;
  break;
 default:
  res->strategy = ARCHIVE_ENTRY_LINKIFY_LIKE_OLD_CPIO;
  break;
 }
}
