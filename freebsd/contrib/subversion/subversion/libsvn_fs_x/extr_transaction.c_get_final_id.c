
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int change_set; } ;
typedef TYPE_1__ svn_fs_x__id_t ;


 int svn_fs_x__change_set_by_rev (int ) ;
 int svn_fs_x__is_revision (int ) ;

__attribute__((used)) static void
get_final_id(svn_fs_x__id_t *part,
             svn_revnum_t revision)
{
  if (!svn_fs_x__is_revision(part->change_set))
    part->change_set = svn_fs_x__change_set_by_rev(revision);
}
