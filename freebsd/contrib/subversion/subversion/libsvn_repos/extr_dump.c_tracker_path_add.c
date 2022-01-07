
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int path_tracker_t ;
struct TYPE_3__ {int exists; int copyfrom_rev; int copyfrom_path; } ;
typedef TYPE_1__ path_tracker_entry_t ;


 int SVN_INVALID_REVNUM ;
 int TRUE ;
 int svn_stringbuf_setempty (int ) ;
 TYPE_1__* tracker_add_entry (int *,char const*) ;

__attribute__((used)) static void
tracker_path_add(path_tracker_t *tracker,
                 const char *path)
{
  path_tracker_entry_t *entry = tracker_add_entry(tracker, path);

  svn_stringbuf_setempty(entry->copyfrom_path);
  entry->copyfrom_rev = SVN_INVALID_REVNUM;
  entry->exists = TRUE;
}
