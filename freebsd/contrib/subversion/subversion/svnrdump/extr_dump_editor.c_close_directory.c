
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct dir_baton {int deleted_entries; TYPE_1__* eb; int repos_relpath; int headers; scalar_t__ dump_props; } ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
struct TYPE_3__ {int stream; struct dir_baton* pending_db; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int apr_hash_clear (int ) ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int dump_node (int *,TYPE_1__*,int ,struct dir_baton*,int *,int ,int ,int *,int ,int *) ;
 int dump_node_delete (int ,char const*,int *) ;
 int dump_pending_dir (TYPE_1__*,int *) ;
 int svn_node_action_change ;
 int svn_stream_puts (int ,char*) ;

__attribute__((used)) static svn_error_t *
close_directory(void *dir_baton,
                apr_pool_t *pool)
{
  struct dir_baton *db = dir_baton;
  apr_hash_index_t *hi;
  svn_boolean_t this_pending;


  this_pending = (db->eb->pending_db == db);

  SVN_ERR(dump_pending_dir(db->eb, pool));
  if ((! this_pending) && (db->dump_props))
    {
      SVN_ERR(dump_node(&db->headers,
                        db->eb, db->repos_relpath, db, ((void*)0),
                        svn_node_action_change, FALSE,
                        ((void*)0), SVN_INVALID_REVNUM, pool));
      db->eb->pending_db = db;
      SVN_ERR(dump_pending_dir(db->eb, pool));
    }


  for (hi = apr_hash_first(pool, db->deleted_entries); hi;
       hi = apr_hash_next(hi))
    {
      const char *path = apr_hash_this_key(hi);

      SVN_ERR(dump_node_delete(db->eb->stream, path, pool));

      SVN_ERR(svn_stream_puts(db->eb->stream, "\n"));
    }


  apr_hash_clear(db->deleted_entries);

  return SVN_NO_ERROR;
}
