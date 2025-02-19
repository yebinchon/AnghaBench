
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_6__ {TYPE_5__* deditor; scalar_t__ repos_root_url; void* ev1_root_dir_baton; int fetch_baton; int fetch_func; int changes; } ;
typedef TYPE_1__ svn_branch__txn_priv_t ;
struct TYPE_7__ {scalar_t__ action; scalar_t__ kind; char* copyfrom_path; scalar_t__ contents_text; int changing_rev; int copyfrom_rev; int deleting_rev; scalar_t__ deleting; } ;
typedef TYPE_2__ change_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_8__ {int (* close_file ) (void*,int *,int *) ;int (* apply_textdelta ) (void*,int *,int *,int *,void**) ;int (* open_file ) (char const*,void*,int ,int *,void**) ;int (* open_directory ) (char const*,void*,int ,int *,void**) ;int (* add_file ) (char const*,void*,char const*,int ,int *,void**) ;int (* add_directory ) (char const*,void*,char const*,int ,int *,void**) ;int (* delete_entry ) (char const*,int ,void*,int *) ;int (* absent_file ) (char const*,void*,int *) ;int (* absent_directory ) (char const*,void*,int *) ;} ;


 scalar_t__ RESTRUCTURE_ADD ;
 scalar_t__ RESTRUCTURE_ADD_ABSENT ;
 scalar_t__ RESTRUCTURE_DELETE ;
 scalar_t__ RESTRUCTURE_NONE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_MALFUNCTION () ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 char* apr_pstrcat (int *,char*,char const*,int ) ;
 int drive_ev1_props (char const*,TYPE_2__ const*,int *,TYPE_5__*,void*,int *) ;
 int fetch_base_props (int **,int ,char const*,int ,int ,int *,int *) ;
 int stub1 (char const*,int ,void*,int *) ;
 int stub10 (void*,int *,int *) ;
 int stub2 (char const*,void*,int *) ;
 int stub3 (char const*,void*,int *) ;
 int stub4 (char const*,int ,void*,int *) ;
 int stub5 (char const*,void*,char const*,int ,int *,void**) ;
 int stub6 (char const*,void*,char const*,int ,int *,void**) ;
 int stub7 (char const*,void*,int ,int *,void**) ;
 int stub8 (char const*,void*,int ,int *,void**) ;
 int stub9 (void*,int *,int *,int *,void**) ;
 TYPE_2__* svn_hash_gets (int ,char const*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_unknown ;
 char* svn_path_url_add_component2 (scalar_t__,char*,int *) ;
 int svn_stream_close (int *) ;
 int * svn_stream_from_stringbuf (scalar_t__,int *) ;
 int svn_txdelta_send_stream (int *,int ,void*,int *,int *) ;

__attribute__((used)) static svn_error_t *
apply_change(void **dir_baton,
             void *parent_baton,
             void *callback_baton,
             const char *ev1_relpath,
             apr_pool_t *result_pool)
{
  apr_pool_t *scratch_pool = result_pool;
  const svn_branch__txn_priv_t *eb = callback_baton;
  const change_node_t *change = svn_hash_gets(eb->changes, ev1_relpath);
  void *file_baton = ((void*)0);
  apr_hash_t *base_props;


  SVN_ERR_ASSERT(change != ((void*)0));


  *dir_baton = ((void*)0);

  SVN_ERR(fetch_base_props(&base_props, eb->changes, ev1_relpath,
                           eb->fetch_func, eb->fetch_baton,
                           scratch_pool, scratch_pool));


  if (parent_baton == ((void*)0))
    {

      *dir_baton = eb->ev1_root_dir_baton;


      SVN_ERR_ASSERT(change->action == RESTRUCTURE_NONE);
      SVN_ERR(drive_ev1_props(ev1_relpath, change, base_props,
                              eb->deditor, *dir_baton, scratch_pool));


      return SVN_NO_ERROR;
    }

  if (change->action == RESTRUCTURE_DELETE)
    {
      SVN_ERR(eb->deditor->delete_entry(ev1_relpath, change->deleting_rev,
                                        parent_baton, scratch_pool));


      return SVN_NO_ERROR;
    }


  SVN_ERR_ASSERT(change->kind != svn_node_unknown);
  if (change->action == RESTRUCTURE_ADD)
    {
      const char *copyfrom_url = ((void*)0);
      svn_revnum_t copyfrom_rev = SVN_INVALID_REVNUM;


      if (change->deleting)
        SVN_ERR(eb->deditor->delete_entry(ev1_relpath, change->deleting_rev,
                                          parent_baton, scratch_pool));


      if (change->copyfrom_path)
        {


          if (eb->repos_root_url)
            copyfrom_url = svn_path_url_add_component2(eb->repos_root_url,
                                                       change->copyfrom_path,
                                                       scratch_pool);
          else
            {
              copyfrom_url = change->copyfrom_path;


              if (copyfrom_url[0] != '/')
                copyfrom_url = apr_pstrcat(scratch_pool, "/",
                                           copyfrom_url, SVN_VA_NULL);
            }

          copyfrom_rev = change->copyfrom_rev;
        }

      if (change->kind == svn_node_dir)
        SVN_ERR(eb->deditor->add_directory(ev1_relpath, parent_baton,
                                           copyfrom_url, copyfrom_rev,
                                           result_pool, dir_baton));
      else if (change->kind == svn_node_file)
        SVN_ERR(eb->deditor->add_file(ev1_relpath, parent_baton,
                                      copyfrom_url, copyfrom_rev,
                                      result_pool, &file_baton));
      else
        SVN_ERR_MALFUNCTION();
    }
  else
    {






      if (change->kind == svn_node_dir)
        SVN_ERR(eb->deditor->open_directory(ev1_relpath, parent_baton,
                                            change->changing_rev,
                                            result_pool, dir_baton));
      else if (change->kind == svn_node_file)
        SVN_ERR(eb->deditor->open_file(ev1_relpath, parent_baton,
                                       change->changing_rev,
                                       result_pool, &file_baton));
      else
        SVN_ERR_MALFUNCTION();
    }


  if (change->kind == svn_node_dir)
    SVN_ERR(drive_ev1_props(ev1_relpath, change, base_props,
                            eb->deditor, *dir_baton, scratch_pool));
  else
    SVN_ERR(drive_ev1_props(ev1_relpath, change, base_props,
                            eb->deditor, file_baton, scratch_pool));


  if (change->contents_text)
    {
      svn_stream_t *read_stream;
      svn_txdelta_window_handler_t handler;
      void *handler_baton;

      read_stream = svn_stream_from_stringbuf(change->contents_text,
                                              scratch_pool);


      SVN_ERR(eb->deditor->apply_textdelta(file_baton, ((void*)0), scratch_pool,
                                           &handler, &handler_baton));

      SVN_ERR(svn_txdelta_send_stream(read_stream, handler, handler_baton,
                                      ((void*)0), scratch_pool));
      SVN_ERR(svn_stream_close(read_stream));
    }

  if (file_baton)
    {
      SVN_ERR(eb->deditor->close_file(file_baton, ((void*)0), scratch_pool));
    }

  return SVN_NO_ERROR;
}
