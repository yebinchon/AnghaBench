
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef scalar_t__ svn_fs_x__change_set_t ;


 int SVN_INVALID_REVNUM ;
 scalar_t__ svn_fs_x__is_revision (scalar_t__) ;

svn_revnum_t
svn_fs_x__get_revnum(svn_fs_x__change_set_t change_set)
{
  return svn_fs_x__is_revision(change_set)
       ? (svn_revnum_t)change_set
       : SVN_INVALID_REVNUM;
}
