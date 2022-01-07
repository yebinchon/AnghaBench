
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_repos__dumpfile_headers_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct file_baton {void* dump_props; } ;
struct dump_edit_baton {int stream; scalar_t__ update_anchor_relpath; } ;
struct dir_baton {void* dump_props; } ;
typedef enum svn_node_action { ____Placeholder_svn_node_action } svn_node_action ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS_DUMPFILE_NODE_ACTION ;
 int SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH ;
 int SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV ;
 int SVN_REPOS_DUMPFILE_NODE_KIND ;
 int SVN_REPOS_DUMPFILE_NODE_PATH ;
 void* TRUE ;
 int assert (int) ;
 int dump_node_delete (int ,char const*,int *) ;




 int svn_relpath_is_canonical (char const*) ;
 char* svn_relpath_join (scalar_t__,char const*,int *) ;
 int svn_repos__dumpfile_header_push (int *,int ,char const*) ;
 int svn_repos__dumpfile_header_pushf (int *,int ,char*,int ) ;
 int * svn_repos__dumpfile_headers_create (int *) ;

__attribute__((used)) static svn_error_t *
dump_node(svn_repos__dumpfile_headers_t **headers_p,
          struct dump_edit_baton *eb,
          const char *repos_relpath,
          struct dir_baton *db,
          struct file_baton *fb,
          enum svn_node_action action,
          svn_boolean_t is_copy,
          const char *copyfrom_path,
          svn_revnum_t copyfrom_rev,
          apr_pool_t *pool)
{
  const char *node_relpath = repos_relpath;
  svn_repos__dumpfile_headers_t *headers
    = svn_repos__dumpfile_headers_create(pool);

  assert(svn_relpath_is_canonical(repos_relpath));
  assert(!copyfrom_path || svn_relpath_is_canonical(copyfrom_path));
  assert(! (db && fb));


  if (eb->update_anchor_relpath)
    node_relpath = svn_relpath_join(eb->update_anchor_relpath,
                                    node_relpath, pool);


  svn_repos__dumpfile_header_push(
    headers, SVN_REPOS_DUMPFILE_NODE_PATH, node_relpath);


  if (fb)
    svn_repos__dumpfile_header_push(
      headers, SVN_REPOS_DUMPFILE_NODE_KIND, "file");
  else if (db)
    svn_repos__dumpfile_header_push(
      headers, SVN_REPOS_DUMPFILE_NODE_KIND, "dir");



  switch (action)
    {
    case 130:





      svn_repos__dumpfile_header_push(
        headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "change");
      break;

    case 129:

      svn_repos__dumpfile_header_push(
        headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "delete");
      break;

    case 128:
      if (! is_copy)
        {

          svn_repos__dumpfile_header_push(
            headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "replace");



          if (fb)
            fb->dump_props = TRUE;
          else if (db)
            db->dump_props = TRUE;
          break;
        }
      else
        {







          SVN_ERR(dump_node_delete(eb->stream, repos_relpath, pool));



        }


    case 131:

      svn_repos__dumpfile_header_push(
        headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "add");

      if (is_copy)
        {

          svn_repos__dumpfile_header_pushf(
            headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV, "%ld", copyfrom_rev);
          svn_repos__dumpfile_header_push(
            headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH, copyfrom_path);
        }
      else
        {
          if (fb)
            fb->dump_props = TRUE;
          else if (db)
            db->dump_props = TRUE;
        }

      break;
    }




  *headers_p = headers;
  return SVN_NO_ERROR;
}
