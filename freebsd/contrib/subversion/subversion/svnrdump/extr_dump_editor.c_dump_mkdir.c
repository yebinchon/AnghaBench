
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_repos__dumpfile_headers_t ;
typedef int svn_error_t ;
struct dump_edit_baton {int stream; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS_DUMPFILE_NODE_ACTION ;
 int SVN_REPOS_DUMPFILE_NODE_KIND ;
 int SVN_REPOS_DUMPFILE_NODE_PATH ;
 int apr_hash_make (int *) ;
 int get_props_content (int *,int **,int ,int ,int *,int *) ;
 int svn_repos__dump_node_record (int ,int *,int *,int ,int ,int ,int *) ;
 int svn_repos__dumpfile_header_push (int *,int ,char const*) ;
 int * svn_repos__dumpfile_headers_create (int *) ;
 int svn_stream_puts (int ,char*) ;

__attribute__((used)) static svn_error_t *
dump_mkdir(struct dump_edit_baton *eb,
           const char *repos_relpath,
           apr_pool_t *pool)
{
  svn_stringbuf_t *prop_content;
  svn_repos__dumpfile_headers_t *headers
    = svn_repos__dumpfile_headers_create(pool);


  svn_repos__dumpfile_header_push(
    headers, SVN_REPOS_DUMPFILE_NODE_PATH, repos_relpath);


  svn_repos__dumpfile_header_push(
    headers, SVN_REPOS_DUMPFILE_NODE_KIND, "dir");


  svn_repos__dumpfile_header_push(
    headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "add");


  SVN_ERR(get_props_content(headers, &prop_content,
                            apr_hash_make(pool), apr_hash_make(pool),
                            pool, pool));
  SVN_ERR(svn_repos__dump_node_record(eb->stream, headers, prop_content,
                                      FALSE, 0, FALSE ,
                                      pool));


  SVN_ERR(svn_stream_puts(eb->stream, "\n\n"));

  return SVN_NO_ERROR;
}
