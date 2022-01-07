
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct revmap_t {int rev; } ;
struct parse_baton_t {int renumber_history; scalar_t__ do_renumber_revs; int glob; int do_exclude; int prefixes; int * dropped_nodes; } ;
struct node_baton_t {char* node_path; int headers; void* has_text_delta; void* has_prop_delta; TYPE_1__* rb; int props; int tcl; void* writing_begun; void* has_text; void* has_props; scalar_t__ do_skip; int * node_pool; } ;
typedef int cf_orig_rev ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_2__ {int writing_begun; void* has_nodes; void* had_dropped_nodes; struct parse_baton_t* pb; } ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_INCOMPLETE_DATA ;
 int SVN_ERR_NODE_UNEXPECTED_KIND ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 char* SVN_REPOS_DUMPFILE_CONTENT_LENGTH ;
 char* SVN_REPOS_DUMPFILE_NODE_ACTION ;
 char* SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH ;
 char* SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV ;
 char* SVN_REPOS_DUMPFILE_NODE_KIND ;
 char* SVN_REPOS_DUMPFILE_NODE_PATH ;
 char* SVN_REPOS_DUMPFILE_PROP_CONTENT_LENGTH ;
 char* SVN_REPOS_DUMPFILE_PROP_DELTA ;
 char* SVN_REPOS_DUMPFILE_TEXT_CONTENT_LENGTH ;
 char* SVN_REPOS_DUMPFILE_TEXT_DELTA ;
 int SVN_STR_TO_REV (char const*) ;
 int SVN_VA_NULL ;
 void* TRUE ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 struct revmap_t* apr_hash_get (int ,int *,int) ;
 int * apr_hash_next (int *) ;
 int * apr_hash_pool_get (int *) ;
 char* apr_hash_this_key (int *) ;
 char* apr_hash_this_val (int *) ;
 void* apr_palloc (int *,int) ;
 char* apr_pstrcat (int *,char*,char*,int ) ;
 char* apr_pstrdup (int *,char*) ;
 int output_revision (TYPE_1__*) ;
 scalar_t__ skip_path (char*,int ,int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int svn__atoui64 (char const*) ;
 int * svn_error_createf (int ,int *,int ,...) ;
 void* svn_hash_gets (int *,char*) ;
 int svn_hash_sets (int *,char*,void*) ;
 int svn_repos__dumpfile_header_push (int ,char const*,char const*) ;
 int svn_repos__dumpfile_header_pushf (int ,char*,char*,int ) ;
 int svn_repos__dumpfile_headers_create (int *) ;
 int svn_stringbuf_create_empty (int *) ;

__attribute__((used)) static svn_error_t *
new_node_record(void **node_baton,
                apr_hash_t *headers,
                void *rev_baton,
                apr_pool_t *pool)
{
  struct parse_baton_t *pb;
  struct node_baton_t *nb;
  char *node_path, *copyfrom_path;
  apr_hash_index_t *hi;
  const char *tcl;

  *node_baton = apr_palloc(pool, sizeof(struct node_baton_t));
  nb = *node_baton;
  nb->rb = rev_baton;
  nb->node_pool = pool;
  pb = nb->rb->pb;

  node_path = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_NODE_PATH);
  copyfrom_path = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH);


  if (node_path[0] != '/')
    node_path = apr_pstrcat(pool, "/", node_path, SVN_VA_NULL);
  if (copyfrom_path && copyfrom_path[0] != '/')
    copyfrom_path = apr_pstrcat(pool, "/", copyfrom_path, SVN_VA_NULL);

  nb->do_skip = skip_path(node_path, pb->prefixes,
                          pb->do_exclude, pb->glob);



  if (nb->do_skip)
    {
      svn_hash_sets(pb->dropped_nodes,
                    apr_pstrdup(apr_hash_pool_get(pb->dropped_nodes),
                                node_path),
                    (void *)1);
      nb->rb->had_dropped_nodes = TRUE;
    }
  else
    {
      const char *kind;
      const char *action;

      tcl = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_TEXT_CONTENT_LENGTH);


      if (copyfrom_path &&
          skip_path(copyfrom_path, pb->prefixes, pb->do_exclude, pb->glob))
        {
          kind = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_NODE_KIND);



          if (tcl && (strcmp(kind, "file") == 0))
            {
              svn_hash_sets(headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH,
                            ((void*)0));
              svn_hash_sets(headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV,
                            ((void*)0));
              copyfrom_path = ((void*)0);
            }


          else
            {
              return svn_error_createf
                (SVN_ERR_INCOMPLETE_DATA, 0,
                 _("Invalid copy source path '%s'"), copyfrom_path);
            }
        }

      nb->has_props = FALSE;
      nb->has_text = FALSE;
      nb->has_prop_delta = FALSE;
      nb->has_text_delta = FALSE;
      nb->writing_begun = FALSE;
      nb->tcl = tcl ? svn__atoui64(tcl) : 0;
      nb->headers = svn_repos__dumpfile_headers_create(pool);
      nb->props = svn_stringbuf_create_empty(pool);
      nb->node_path = apr_pstrdup(pool, node_path);



      nb->rb->has_nodes = TRUE;
      if (! nb->rb->writing_begun)
        SVN_ERR(output_revision(nb->rb));



      svn_repos__dumpfile_header_push(
        nb->headers, SVN_REPOS_DUMPFILE_NODE_PATH, node_path + 1);


      kind = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_NODE_KIND);
      if (kind)
        svn_repos__dumpfile_header_push(
          nb->headers, SVN_REPOS_DUMPFILE_NODE_KIND, kind);


      action = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_NODE_ACTION);
      if (action)
        svn_repos__dumpfile_header_push(
          nb->headers, SVN_REPOS_DUMPFILE_NODE_ACTION, action);
      else
        return svn_error_createf(SVN_ERR_INCOMPLETE_DATA, 0,
                                 _("Missing Node-action for path '%s'"),
                                 node_path);

      for (hi = apr_hash_first(pool, headers); hi; hi = apr_hash_next(hi))
        {
          const char *key = apr_hash_this_key(hi);
          const char *val = apr_hash_this_val(hi);

          if ((!strcmp(key, SVN_REPOS_DUMPFILE_PROP_DELTA))
              && (!strcmp(val, "true")))
            nb->has_prop_delta = TRUE;

          if ((!strcmp(key, SVN_REPOS_DUMPFILE_TEXT_DELTA))
              && (!strcmp(val, "true")))
            nb->has_text_delta = TRUE;

          if ((!strcmp(key, SVN_REPOS_DUMPFILE_CONTENT_LENGTH))
              || (!strcmp(key, SVN_REPOS_DUMPFILE_PROP_CONTENT_LENGTH))
              || (!strcmp(key, SVN_REPOS_DUMPFILE_TEXT_CONTENT_LENGTH))
              || (!strcmp(key, SVN_REPOS_DUMPFILE_NODE_PATH))
              || (!strcmp(key, SVN_REPOS_DUMPFILE_NODE_KIND))
              || (!strcmp(key, SVN_REPOS_DUMPFILE_NODE_ACTION)))
            continue;







          if (pb->do_renumber_revs
              && (!strcmp(key, SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV)))
            {
              svn_revnum_t cf_orig_rev;
              struct revmap_t *cf_renum_val;

              cf_orig_rev = SVN_STR_TO_REV(val);
              cf_renum_val = apr_hash_get(pb->renumber_history,
                                          &cf_orig_rev,
                                          sizeof(cf_orig_rev));
              if (! (cf_renum_val && SVN_IS_VALID_REVNUM(cf_renum_val->rev)))
                return svn_error_createf
                  (SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                   _("No valid copyfrom revision in filtered stream"));
              svn_repos__dumpfile_header_pushf(
                nb->headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV,
                "%ld", cf_renum_val->rev);
              continue;
            }


          svn_repos__dumpfile_header_push(nb->headers, key, val);
        }
    }

  return SVN_NO_ERROR;
}
