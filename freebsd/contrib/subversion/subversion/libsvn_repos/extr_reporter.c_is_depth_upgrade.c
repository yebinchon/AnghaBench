
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_node_kind_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 scalar_t__ svn_depth_unknown ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;

__attribute__((used)) static svn_boolean_t
is_depth_upgrade(svn_depth_t wc_depth,
                 svn_depth_t requested_depth,
                 svn_node_kind_t kind)
{
  if (requested_depth == svn_depth_unknown
      || requested_depth <= wc_depth
      || wc_depth == svn_depth_immediates)
    return FALSE;

  if (kind == svn_node_file
      && wc_depth == svn_depth_files)
    return FALSE;

  if (kind == svn_node_dir
      && wc_depth == svn_depth_empty
      && requested_depth == svn_depth_files)
    return FALSE;

  return TRUE;
}
