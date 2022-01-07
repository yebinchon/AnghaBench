
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_5__ {scalar_t__ count; } ;
struct archive_match {TYPE_1__ inclusion_gnames; TYPE_1__ inclusion_unames; TYPE_3__ inclusion_gids; TYPE_3__ inclusion_uids; } ;
struct archive_entry {int dummy; } ;


 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_gname (struct archive_entry*) ;
 int archive_entry_gname_w (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_entry_uname (struct archive_entry*) ;
 int archive_entry_uname_w (struct archive_entry*) ;
 int match_owner_id (TYPE_3__*,int ) ;
 int match_owner_name_mbs (struct archive_match*,TYPE_1__*,int ) ;
 int match_owner_name_wcs (struct archive_match*,TYPE_1__*,int ) ;

__attribute__((used)) static int
owner_excluded(struct archive_match *a, struct archive_entry *entry)
{
 int r;

 if (a->inclusion_uids.count) {
  if (!match_owner_id(&(a->inclusion_uids),
      archive_entry_uid(entry)))
   return (1);
 }

 if (a->inclusion_gids.count) {
  if (!match_owner_id(&(a->inclusion_gids),
      archive_entry_gid(entry)))
   return (1);
 }

 if (a->inclusion_unames.count) {




  r = match_owner_name_mbs(a, &(a->inclusion_unames),
   archive_entry_uname(entry));

  if (!r)
   return (1);
  else if (r < 0)
   return (r);
 }

 if (a->inclusion_gnames.count) {




  r = match_owner_name_mbs(a, &(a->inclusion_gnames),
   archive_entry_gname(entry));

  if (!r)
   return (1);
  else if (r < 0)
   return (r);
 }
 return (0);
}
