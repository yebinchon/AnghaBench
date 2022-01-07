
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_3__ {scalar_t__ revision; int number; } ;
typedef TYPE_1__ svn_fs_fs__id_part_t ;
typedef scalar_t__ apr_uint64_t ;


 int SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT ;
 scalar_t__ SVN_INVALID_REVNUM ;

__attribute__((used)) static void
get_final_id(svn_fs_fs__id_part_t *part,
             svn_revnum_t revision,
             apr_uint64_t start_id,
             int format)
{
  if (part->revision == SVN_INVALID_REVNUM)
    {
      if (format >= SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT)
        {
          part->revision = revision;
        }
      else
        {
          part->revision = 0;
          part->number += start_id;
        }
    }
}
