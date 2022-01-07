
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_4__ {int has_children; int subtractive_merge; int revprops; int revision; } ;
typedef TYPE_1__ svn_repos_log_entry_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef void* svn_boolean_t ;
struct TYPE_5__ {scalar_t__ stack_depth; void* started; int * conn; } ;
typedef TYPE_2__ log_baton_t ;
typedef int apr_pool_t ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int apr_hash_count (int ) ;
 int svn_compat_log_revprops_clear (int ) ;
 int svn_compat_log_revprops_out_string (int const**,int const**,int const**,int ) ;
 int svn_ra_svn__end_list (int *,int *) ;
 int svn_ra_svn__start_list (int *,int *) ;
 int svn_ra_svn__write_boolean (int *,int *,int ) ;
 int svn_ra_svn__write_data_log_entry (int *,int *,int ,int const*,int const*,int const*,int ,void*,unsigned int) ;
 int svn_ra_svn__write_proplist (int *,int *,int ) ;

__attribute__((used)) static svn_error_t *
revision_receiver(void *baton,
                  svn_repos_log_entry_t *log_entry,
                  apr_pool_t *scratch_pool)
{
  log_baton_t *b = baton;
  svn_ra_svn_conn_t *conn = b->conn;
  svn_boolean_t invalid_revnum = FALSE;
  const svn_string_t *author, *date, *message;
  unsigned revprop_count;

  if (log_entry->revision == SVN_INVALID_REVNUM)
    {


      if (b->stack_depth == 0)
        return SVN_NO_ERROR;



      log_entry->revision = 0;
      invalid_revnum = TRUE;
      b->stack_depth--;
    }

  svn_compat_log_revprops_out_string(&author, &date, &message,
                                     log_entry->revprops);




  if (author && date && message && apr_hash_count(log_entry->revprops) == 3)
    {
      revprop_count = 0;
    }
  else
    {
      svn_compat_log_revprops_clear(log_entry->revprops);
      if (log_entry->revprops)
        revprop_count = apr_hash_count(log_entry->revprops);
      else
        revprop_count = 0;
    }


  if (!b->started)
    {
      SVN_ERR(svn_ra_svn__start_list(conn, scratch_pool));
      SVN_ERR(svn_ra_svn__start_list(conn, scratch_pool));
    }


  SVN_ERR(svn_ra_svn__end_list(conn, scratch_pool));
  b->started = FALSE;


  SVN_ERR(svn_ra_svn__write_data_log_entry(conn, scratch_pool,
                                           log_entry->revision,
                                           author, date, message,
                                           log_entry->has_children,
                                           invalid_revnum, revprop_count));


  SVN_ERR(svn_ra_svn__start_list(conn, scratch_pool));
  if (revprop_count)
    SVN_ERR(svn_ra_svn__write_proplist(conn, scratch_pool,
                                       log_entry->revprops));
  SVN_ERR(svn_ra_svn__end_list(conn, scratch_pool));


  SVN_ERR(svn_ra_svn__write_boolean(conn, scratch_pool,
                                    log_entry->subtractive_merge));
  SVN_ERR(svn_ra_svn__end_list(conn, scratch_pool));

  if (log_entry->has_children)
    b->stack_depth++;

  return SVN_NO_ERROR;
}
