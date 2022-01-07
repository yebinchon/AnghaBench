
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_7__ {char* URL; char* repos_root_URL; char* repos_UUID; char* last_changed_author; TYPE_1__* wc_info; int last_changed_date; int last_changed_rev; int rev; int kind; } ;
typedef TYPE_2__ svn_client_info2_t ;
struct TYPE_8__ {int print_what; scalar_t__ start_new_line; int path_prefix; int target_is_path; int multiple_targets; } ;
typedef TYPE_3__ print_info_baton_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {char* wcroot_abspath; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int print_info_item_revision (int ,char const* const,int *) ;
 int print_info_item_string (char*,char const* const,int *) ;
 char* relative_url (TYPE_2__ const*,int *) ;
 int stdout ;
 char* svn_cl__local_style_skip_ancestor (int ,char const*,int *) ;
 int svn_cmdline_fputs (char*,int ,int *) ;
 char* svn_node_kind_to_word (int ) ;
 char* svn_time_to_cstring (int ,int *) ;

__attribute__((used)) static svn_error_t *
print_info_item(void *baton,
                  const char *target,
                  const svn_client_info2_t *info,
                  apr_pool_t *pool)
{
  print_info_baton_t *const receiver_baton = baton;
  const char *const target_path =
    (!receiver_baton->multiple_targets ? ((void*)0)
     : (!receiver_baton->target_is_path ? info->URL
        : svn_cl__local_style_skip_ancestor(
            receiver_baton->path_prefix, target, pool)));

  if (receiver_baton->start_new_line)
    SVN_ERR(svn_cmdline_fputs("\n", stdout, pool));

  switch (receiver_baton->print_what)
    {
    case 137:
      SVN_ERR(print_info_item_string(svn_node_kind_to_word(info->kind),
                                     target_path, pool));
      break;

    case 129:
      SVN_ERR(print_info_item_string(info->URL, target_path, pool));
      break;

    case 133:
      SVN_ERR(print_info_item_string(relative_url(info, pool),
                                     target_path, pool));
      break;

    case 132:
      SVN_ERR(print_info_item_string(info->repos_root_URL, target_path, pool));
      break;

    case 131:
      SVN_ERR(print_info_item_string(info->repos_UUID, target_path, pool));
      break;

    case 130:
      SVN_ERR(print_info_item_revision(info->rev, target_path, pool));
      break;

    case 134:
      SVN_ERR(print_info_item_revision(info->last_changed_rev,
                                       target_path, pool));
      break;

    case 135:
      SVN_ERR(print_info_item_string(
                  (!info->last_changed_date ? ((void*)0)
                   : svn_time_to_cstring(info->last_changed_date, pool)),
                  target_path, pool));
      break;

    case 136:
      SVN_ERR(print_info_item_string(info->last_changed_author,
                                     target_path, pool));
      break;

    case 128:
      SVN_ERR(print_info_item_string(
                  (info->wc_info && info->wc_info->wcroot_abspath
                   ? info->wc_info->wcroot_abspath : ((void*)0)),
                  target_path, pool));
      break;

    default:
      SVN_ERR_MALFUNCTION();
    }

  receiver_baton->start_new_line = TRUE;
  return SVN_NO_ERROR;
}
