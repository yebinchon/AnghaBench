
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_node_kind_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {scalar_t__ filetype; } ;
typedef TYPE_1__ apr_finfo_t ;


 scalar_t__ APR_DIR ;
 scalar_t__ APR_LNK ;
 scalar_t__ APR_REG ;
 int FALSE ;
 int TRUE ;
 int svn_node_dir ;
 int svn_node_file ;
 int svn_node_unknown ;

__attribute__((used)) static void
map_apr_finfo_to_node_kind(svn_node_kind_t *kind,
                           svn_boolean_t *is_special,
                           apr_finfo_t *finfo)
{
  *is_special = FALSE;

  if (finfo->filetype == APR_REG)
    *kind = svn_node_file;
  else if (finfo->filetype == APR_DIR)
    *kind = svn_node_dir;
  else if (finfo->filetype == APR_LNK)
    {
      *is_special = TRUE;
      *kind = svn_node_file;
    }
  else
    *kind = svn_node_unknown;
}
