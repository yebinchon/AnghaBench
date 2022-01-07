
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
struct dump_edit_baton {struct dir_baton* pending_db; int stream; } ;
struct dir_baton {scalar_t__ dump_props; int deleted_props; int props; int headers; } ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_hash_clear (int ) ;
 int get_props_content (int ,int **,int ,int ,int *,int *) ;
 int svn_repos__dump_node_record (int ,int ,int *,scalar_t__,int ,scalar_t__,int *) ;
 int svn_stream_puts (int ,char*) ;

__attribute__((used)) static svn_error_t *
dump_pending_dir(struct dump_edit_baton *eb,
                 apr_pool_t *scratch_pool)
{
  struct dir_baton *db = eb->pending_db;
  svn_stringbuf_t *prop_content = ((void*)0);

  if (! db)
    return SVN_NO_ERROR;


  if (db->dump_props)
    {
      SVN_ERR(get_props_content(db->headers, &prop_content,
                                db->props, db->deleted_props,
                                scratch_pool, scratch_pool));
    }
  SVN_ERR(svn_repos__dump_node_record(eb->stream, db->headers, prop_content,
                                      FALSE, 0, FALSE ,
                                      scratch_pool));



  SVN_ERR(svn_stream_puts(eb->stream, "\n\n"));

  if (db->dump_props)
    {

      apr_hash_clear(db->props);
      apr_hash_clear(db->deleted_props);
      db->dump_props = FALSE;
    }


  eb->pending_db = ((void*)0);

  return SVN_NO_ERROR;
}
