
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_repos__dumpfile_headers_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS_DUMPFILE_NODE_ACTION ;
 int SVN_REPOS_DUMPFILE_NODE_PATH ;
 int assert (int ) ;
 int svn_relpath_is_canonical (char const*) ;
 int svn_repos__dump_node_record (int *,int *,int *,int ,int ,int ,int *) ;
 int svn_repos__dumpfile_header_push (int *,int ,char const*) ;
 int * svn_repos__dumpfile_headers_create (int *) ;

__attribute__((used)) static svn_error_t *
dump_node_delete(svn_stream_t *stream,
                 const char *node_relpath,
                 apr_pool_t *pool)
{
  svn_repos__dumpfile_headers_t *headers
    = svn_repos__dumpfile_headers_create(pool);

  assert(svn_relpath_is_canonical(node_relpath));


  svn_repos__dumpfile_header_push(
    headers, SVN_REPOS_DUMPFILE_NODE_PATH, node_relpath);


  svn_repos__dumpfile_header_push(
    headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "delete");

  SVN_ERR(svn_repos__dump_node_record(stream, headers,
                                      ((void*)0), FALSE, 0,
                                      FALSE , pool));
  return SVN_NO_ERROR;
}
