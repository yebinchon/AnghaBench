
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_3__ {void* baton; } ;
struct editor_baton {TYPE_2__* deditor; scalar_t__ repos_root; TYPE_1__ root; int changes; int base_relpath; } ;
struct change_node {scalar_t__ action; scalar_t__ kind; char* copyfrom_path; int checksum; scalar_t__ contents_abspath; scalar_t__ contents_changed; int changing; int copyfrom_rev; int deleting; } ;
typedef int apr_pool_t ;
struct TYPE_4__ {int (* close_file ) (void*,char const*,int *) ;int (* apply_textdelta ) (void*,int *,int *,int *,void**) ;int (* open_file ) (char const*,void*,int ,int *,void**) ;int (* open_directory ) (char const*,void*,int ,int *,void**) ;int (* add_file ) (char const*,void*,char const*,int ,int *,void**) ;int (* add_directory ) (char const*,void*,char const*,int ,int *,void**) ;int (* delete_entry ) (char const*,int ,void*,int *) ;int (* absent_file ) (char const*,void*,int *) ;int (* absent_directory ) (char const*,void*,int *) ;} ;


 scalar_t__ RESTRUCTURE_ADD ;
 scalar_t__ RESTRUCTURE_ADD_ABSENT ;
 scalar_t__ RESTRUCTURE_DELETE ;
 scalar_t__ RESTRUCTURE_NONE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 char* apr_pstrcat (int *,char*,char const*,int ) ;
 int drive_ev1_props (struct editor_baton const*,char const*,struct change_node const*,void*,int *) ;
 int stub1 (char const*,int ,void*,int *) ;
 int stub10 (void*,char const*,int *) ;
 int stub2 (char const*,void*,int *) ;
 int stub3 (char const*,void*,int *) ;
 int stub4 (char const*,int ,void*,int *) ;
 int stub5 (char const*,void*,char const*,int ,int *,void**) ;
 int stub6 (char const*,void*,char const*,int ,int *,void**) ;
 int stub7 (char const*,void*,int ,int *,void**) ;
 int stub8 (char const*,void*,int ,int *,void**) ;
 int stub9 (void*,int *,int *,int *,void**) ;
 char* svn_checksum_to_cstring (int ,int *) ;
 struct change_node* svn_hash_gets (int ,char const*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_unknown ;
 char* svn_path_url_add_component2 (scalar_t__,char*,int *) ;
 char* svn_relpath_join (int ,char const*,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_readonly (int **,scalar_t__,int *,int *) ;
 int svn_txdelta_send_stream (int *,int ,void*,int *,int *) ;

__attribute__((used)) static svn_error_t *
apply_change(void **dir_baton,
             void *parent_baton,
             void *callback_baton,
             const char *ev1_relpath,
             apr_pool_t *result_pool)
{

  apr_pool_t *scratch_pool = result_pool;
  const struct editor_baton *eb = callback_baton;
  const struct change_node *change;
  const char *relpath;
  void *file_baton = ((void*)0);


  *dir_baton = ((void*)0);

  relpath = svn_relpath_join(eb->base_relpath, ev1_relpath, scratch_pool);
  change = svn_hash_gets(eb->changes, relpath);


  SVN_ERR_ASSERT(change != ((void*)0));


  if (parent_baton == ((void*)0))
    {

      *dir_baton = eb->root.baton;


      SVN_ERR_ASSERT(change->action == RESTRUCTURE_NONE);
      SVN_ERR(drive_ev1_props(eb, relpath, change, *dir_baton, scratch_pool));


      return SVN_NO_ERROR;
    }

  if (change->action == RESTRUCTURE_DELETE)
    {
      SVN_ERR(eb->deditor->delete_entry(ev1_relpath, change->deleting,
                                        parent_baton, scratch_pool));


      return SVN_NO_ERROR;
    }


  SVN_ERR_ASSERT(change->kind != svn_node_unknown);

  if (change->action == RESTRUCTURE_ADD_ABSENT)
    {
      if (change->kind == svn_node_dir)
        SVN_ERR(eb->deditor->absent_directory(ev1_relpath, parent_baton,
                                              scratch_pool));
      else
        SVN_ERR(eb->deditor->absent_file(ev1_relpath, parent_baton,
                                         scratch_pool));


      return SVN_NO_ERROR;
    }


  if (change->action == RESTRUCTURE_ADD)
    {
      const char *copyfrom_url = ((void*)0);
      svn_revnum_t copyfrom_rev = SVN_INVALID_REVNUM;


      if (SVN_IS_VALID_REVNUM(change->deleting))
        SVN_ERR(eb->deditor->delete_entry(ev1_relpath, change->deleting,
                                          parent_baton, scratch_pool));


      if (change->copyfrom_path)
        {
          if (eb->repos_root)
            copyfrom_url = svn_path_url_add_component2(eb->repos_root,
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
      else
        SVN_ERR(eb->deditor->add_file(ev1_relpath, parent_baton,
                                      copyfrom_url, copyfrom_rev,
                                      result_pool, &file_baton));
    }
  else
    {
      if (change->kind == svn_node_dir)
        SVN_ERR(eb->deditor->open_directory(ev1_relpath, parent_baton,
                                            change->changing,
                                            result_pool, dir_baton));
      else
        SVN_ERR(eb->deditor->open_file(ev1_relpath, parent_baton,
                                       change->changing,
                                       result_pool, &file_baton));
    }


  if (change->kind == svn_node_dir)
    SVN_ERR(drive_ev1_props(eb, relpath, change, *dir_baton, scratch_pool));
  else
    SVN_ERR(drive_ev1_props(eb, relpath, change, file_baton, scratch_pool));

  if (change->contents_changed && change->contents_abspath)
    {
      svn_txdelta_window_handler_t handler;
      void *handler_baton;
      svn_stream_t *contents;



      SVN_ERR(eb->deditor->apply_textdelta(file_baton, ((void*)0), scratch_pool,
                                           &handler, &handler_baton));
      SVN_ERR(svn_stream_open_readonly(&contents, change->contents_abspath,
                                       scratch_pool, scratch_pool));

      SVN_ERR(svn_txdelta_send_stream(contents, handler, handler_baton,
                                      ((void*)0), scratch_pool));
      SVN_ERR(svn_stream_close(contents));
    }

  if (file_baton)
    {
      const char *digest = svn_checksum_to_cstring(change->checksum,
                                                   scratch_pool);

      SVN_ERR(eb->deditor->close_file(file_baton, digest, scratch_pool));
    }

  return SVN_NO_ERROR;
}
