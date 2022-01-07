
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_22__ {int kind; int actual_kind; int node_status; int text_status; int prop_status; int repos_node_status; int repos_text_status; int repos_prop_status; char const* moved_from_abspath; int file_external; void* moved_to_abspath; void* changelist; void* versioned; void* conflicted; int locked; TYPE_5__* lock; int repos_relpath; int repos_uuid; int repos_root_url; int * ood_changed_author; scalar_t__ ood_changed_date; int ood_changed_rev; scalar_t__ ood_kind; int changed_date; void* changed_author; int changed_rev; int revision; TYPE_5__ const* repos_lock; void* copied; void* switched; scalar_t__ filesize; int depth; } ;
typedef TYPE_3__ svn_wc_status3_t ;
struct TYPE_23__ {scalar_t__ op_root; int has_descendants; TYPE_3__ s; } ;
typedef TYPE_4__ svn_wc__internal_status_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_24__ {int creation_date; int comment; int owner; int token; int path; } ;
typedef TYPE_5__ svn_lock_t ;
struct TYPE_25__ {scalar_t__ kind; scalar_t__ filesize; scalar_t__ mtime; scalar_t__ special; } ;
typedef TYPE_6__ svn_io_dirent2_t ;
struct TYPE_26__ {scalar_t__ apr_err; } ;
typedef TYPE_7__ svn_error_t ;
typedef void* svn_boolean_t ;
struct svn_wc__db_info_t {scalar_t__ status; int kind; int special; scalar_t__ recorded_size; scalar_t__ recorded_time; int file_external; TYPE_2__* moved_to; scalar_t__ changelist; int locked; TYPE_1__* lock; int changed_date; scalar_t__ changed_author; int changed_rev; int revnum; int depth; scalar_t__ op_root; int has_descendants; scalar_t__ moved_here; scalar_t__ have_more_work; scalar_t__ have_base; void* copied; void* conflicted; int has_checksum; scalar_t__ had_props; scalar_t__ props_mod; scalar_t__ incomplete; int repos_relpath; } ;
typedef enum svn_wc_status_kind { ____Placeholder_svn_wc_status_kind } svn_wc_status_kind ;
typedef int apr_pool_t ;
struct TYPE_21__ {scalar_t__ moved_to_abspath; } ;
struct TYPE_20__ {int date; int comment; int owner; int token; } ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_ACCESS_DENIED ;
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 scalar_t__ SVN_INVALID_FILESIZE ;
 int SVN_INVALID_REVNUM ;
 TYPE_7__* SVN_NO_ERROR ;
 void* TRUE ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 void* apr_pstrdup (int *,scalar_t__) ;
 int get_repos_root_url_relpath (int *,int *,int *,struct svn_wc__db_info_t const*,char const*,char const*,char const*,int *,char const*,int *,int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_dirent_basename (char const*,int *) ;
 int svn_error_clear (TYPE_7__*) ;
 TYPE_7__* svn_error_trace (TYPE_7__*) ;
 TYPE_5__* svn_lock_create (int *) ;


 scalar_t__ svn_node_none ;


 char* svn_relpath_skip_ancestor (char const*,int ) ;
 int svn_wc__db_info_below_working (void**,void**,scalar_t__*,int *,char const*,int *) ;
 int svn_wc__db_scan_deletion (int *,int *,char const**,int *,int *,char const*,int *,int *) ;
 TYPE_7__* svn_wc__db_scan_moved (char const**,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_not_present ;
 int svn_wc__internal_conflicted_p (void**,void**,void**,int *,char const*,int *) ;
 TYPE_7__* svn_wc__internal_file_modified_p (void**,int *,char const*,void*,int *) ;
 int svn_wc_status_added ;
 int svn_wc_status_deleted ;
 int svn_wc_status_incomplete ;
 int svn_wc_status_missing ;
 int svn_wc_status_modified ;
 int svn_wc_status_none ;
 int svn_wc_status_normal ;
 int svn_wc_status_obstructed ;
 int svn_wc_status_replaced ;

__attribute__((used)) static svn_error_t *
assemble_status(svn_wc__internal_status_t **status,
                svn_wc__db_t *db,
                const char *local_abspath,
                const char *parent_repos_root_url,
                const char *parent_repos_relpath,
                const char *parent_repos_uuid,
                const struct svn_wc__db_info_t *info,
                const svn_io_dirent2_t *dirent,
                svn_boolean_t get_all,
                svn_boolean_t ignore_text_mods,
                svn_boolean_t check_working_copy,
                const svn_lock_t *repos_lock,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  svn_wc__internal_status_t *inner_stat;
  svn_wc_status3_t *stat;
  svn_boolean_t switched_p = FALSE;
  svn_boolean_t copied = FALSE;
  svn_boolean_t conflicted;
  const char *moved_from_abspath = ((void*)0);


  enum svn_wc_status_kind node_status = svn_wc_status_normal;
  enum svn_wc_status_kind text_status = svn_wc_status_normal;
  enum svn_wc_status_kind prop_status = svn_wc_status_none;


  if (!info->repos_relpath || !parent_repos_relpath)
    switched_p = FALSE;
  else
    {

      const char *name = svn_relpath_skip_ancestor(parent_repos_relpath,
                                                   info->repos_relpath);
      switched_p = !name || (strcmp(name,
                                    svn_dirent_basename(local_abspath, ((void*)0)))
                             != 0);
    }

  if (info->status == svn_wc__db_status_incomplete || info->incomplete)
    {

      node_status = svn_wc_status_incomplete;
    }
  else if (info->status == svn_wc__db_status_deleted)
    {
      node_status = svn_wc_status_deleted;

      if (!info->have_base || info->have_more_work || info->copied)
        copied = TRUE;
      else if (!info->have_more_work && info->have_base)
        copied = FALSE;
      else
        {
          const char *work_del_abspath;


          SVN_ERR(svn_wc__db_scan_deletion(((void*)0), ((void*)0),
                                           &work_del_abspath, ((void*)0),
                                           db, local_abspath,
                                           scratch_pool, scratch_pool));
          if (work_del_abspath)
            copied = TRUE;
        }
    }
  else if (check_working_copy)
    {


      svn_node_kind_t expected_kind = (info->kind == 131)
                                        ? 131
                                        : 130;

      if (!dirent || dirent->kind != expected_kind)
        {


          if (!dirent || dirent->kind == svn_node_none)
            node_status = svn_wc_status_missing;
          else
            node_status = svn_wc_status_obstructed;
        }
    }


  if (info->status != svn_wc__db_status_deleted)
    {
      if (info->props_mod)
        prop_status = svn_wc_status_modified;
      else if (info->had_props)
        prop_status = svn_wc_status_normal;
    }






  if (info->kind != 131
      && node_status == svn_wc_status_normal)
    {
      svn_boolean_t text_modified_p = FALSE;
      if ((info->kind == 130
          || info->kind == 129)



          )
        {





          if (!info->has_checksum)
            text_modified_p = TRUE;
          else if (ignore_text_mods
                  ||(dirent
                     && info->recorded_size != SVN_INVALID_FILESIZE
                     && info->recorded_time != 0
                     && info->recorded_size == dirent->filesize
                     && info->recorded_time == dirent->mtime))
            text_modified_p = FALSE;
          else
            {
              svn_error_t *err;
              err = svn_wc__internal_file_modified_p(&text_modified_p,
                                                     db, local_abspath,
                                                     FALSE, scratch_pool);

              if (err)
                {
                  if (err->apr_err != SVN_ERR_WC_PATH_ACCESS_DENIED)
                    return svn_error_trace(err);





                  svn_error_clear(err);
                  text_modified_p = TRUE;
                }
            }
        }





      if (text_modified_p)
        text_status = svn_wc_status_modified;
    }

  conflicted = info->conflicted;
  if (conflicted)
    {
      svn_boolean_t text_conflicted, prop_conflicted, tree_conflicted;



      SVN_ERR(svn_wc__internal_conflicted_p(&text_conflicted, &prop_conflicted,
                                            &tree_conflicted,
                                            db, local_abspath, scratch_pool));

      if (!text_conflicted && !prop_conflicted && !tree_conflicted)
        conflicted = FALSE;
    }

  if (node_status == svn_wc_status_normal)
    {





      if (info->status == svn_wc__db_status_added)
        {
          copied = info->copied;
          if (!info->op_root)
            { }
          else if (!info->have_base && !info->have_more_work)
            {

              node_status = svn_wc_status_added;
            }
          else
            {
              svn_wc__db_status_t below_working;
              svn_boolean_t have_base, have_work;

              SVN_ERR(svn_wc__db_info_below_working(&have_base, &have_work,
                                                    &below_working,
                                                    db, local_abspath,
                                                    scratch_pool));



              if (below_working != svn_wc__db_status_not_present
                  && below_working != svn_wc__db_status_deleted)
                {
                  node_status = svn_wc_status_replaced;
                }
              else
                node_status = svn_wc_status_added;
            }


          if (info->moved_here && info->op_root)
            {
              svn_error_t *err;
              err = svn_wc__db_scan_moved(&moved_from_abspath, ((void*)0), ((void*)0), ((void*)0),
                                          db, local_abspath,
                                          result_pool, scratch_pool);

              if (err)
                {
                  if (err->apr_err != SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
                    return svn_error_trace(err);

                  svn_error_clear(err);



                  moved_from_abspath = ((void*)0);
                }
            }
        }
    }


  if (node_status == svn_wc_status_normal)
    node_status = text_status;

  if (node_status == svn_wc_status_normal
      && prop_status != svn_wc_status_none)
    node_status = prop_status;





  if (! get_all)
    if (((node_status == svn_wc_status_none)
         || (node_status == svn_wc_status_normal)
         || (node_status == svn_wc_status_deleted && !info->op_root))

        && (! switched_p)
        && (! info->locked)
        && (! info->lock)
        && (! repos_lock)
        && (! info->changelist)
        && (! conflicted)
        && (! info->moved_to))
      {
        *status = ((void*)0);
        return SVN_NO_ERROR;
      }



  inner_stat = apr_pcalloc(result_pool, sizeof(*inner_stat));
  stat = &inner_stat->s;
  inner_stat->has_descendants = info->has_descendants;
  inner_stat->op_root = info->op_root;

  switch (info->kind)
    {
      case 131:
        stat->kind = 131;
        break;
      case 130:
      case 129:
        stat->kind = 130;
        break;
      case 128:
      default:
        stat->kind = 128;
    }
  stat->depth = info->depth;

  if (dirent)
    {
      stat->filesize = (dirent->kind == 130)
                            ? dirent->filesize
                            : SVN_INVALID_FILESIZE;
      stat->actual_kind = dirent->special ? 129
                                          : dirent->kind;
    }
  else
    {
      stat->filesize = SVN_INVALID_FILESIZE;
      stat->actual_kind = ignore_text_mods ? 128
                                           : svn_node_none;
    }

  stat->node_status = node_status;
  stat->text_status = text_status;
  stat->prop_status = prop_status;
  stat->repos_node_status = svn_wc_status_none;
  stat->repos_text_status = svn_wc_status_none;
  stat->repos_prop_status = svn_wc_status_none;
  stat->switched = switched_p;
  stat->copied = copied;
  stat->repos_lock = repos_lock;
  stat->revision = info->revnum;
  stat->changed_rev = info->changed_rev;
  if (info->changed_author)
    stat->changed_author = apr_pstrdup(result_pool, info->changed_author);
  stat->changed_date = info->changed_date;

  stat->ood_kind = svn_node_none;
  stat->ood_changed_rev = SVN_INVALID_REVNUM;
  stat->ood_changed_date = 0;
  stat->ood_changed_author = ((void*)0);

  SVN_ERR(get_repos_root_url_relpath(&stat->repos_relpath,
                                     &stat->repos_root_url,
                                     &stat->repos_uuid, info,
                                     parent_repos_relpath,
                                     parent_repos_root_url,
                                     parent_repos_uuid,
                                     db, local_abspath,
                                     result_pool, scratch_pool));

  if (info->lock)
    {
      svn_lock_t *lck = svn_lock_create(result_pool);
      lck->path = stat->repos_relpath;
      lck->token = info->lock->token;
      lck->owner = info->lock->owner;
      lck->comment = info->lock->comment;
      lck->creation_date = info->lock->date;
      stat->lock = lck;
    }
  else
    stat->lock = ((void*)0);

  stat->locked = info->locked;
  stat->conflicted = conflicted;
  stat->versioned = TRUE;
  if (info->changelist)
    stat->changelist = apr_pstrdup(result_pool, info->changelist);

  stat->moved_from_abspath = moved_from_abspath;


  if (info->moved_to)
    stat->moved_to_abspath = apr_pstrdup(result_pool,
                                         info->moved_to->moved_to_abspath);

  stat->file_external = info->file_external;

  *status = inner_stat;

  return SVN_NO_ERROR;
}
