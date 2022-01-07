
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int pool; int result_catalog; } ;
typedef TYPE_2__ mergeinfo_context_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int MERGEINFO_INFO ;
 int MERGEINFO_ITEM ;
 int MERGEINFO_PATH ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int apr_pstrdup (int ,char const*) ;
 char* svn_hash_gets (int *,char*) ;
 int svn_hash_sets (int ,int ,int ) ;
 int svn_mergeinfo_parse (int *,char const*,int ) ;
 int svn_ra_serf__xml_note (int *,int,char*,int ) ;

__attribute__((used)) static svn_error_t *
mergeinfo_closed(svn_ra_serf__xml_estate_t *xes,
                 void *baton,
                 int leaving_state,
                 const svn_string_t *cdata,
                 apr_hash_t *attrs,
                 apr_pool_t *scratch_pool)
{
  mergeinfo_context_t *mergeinfo_ctx = baton;

  if (leaving_state == MERGEINFO_ITEM)
    {

      const char *path = svn_hash_gets(attrs, "path");
      const char *info = svn_hash_gets(attrs, "info");

      if (path != ((void*)0) && info != ((void*)0))
        {
          svn_mergeinfo_t path_mergeinfo;



          if (path[0] == '/')
            ++path;

          SVN_ERR(svn_mergeinfo_parse(&path_mergeinfo, info,
                                      mergeinfo_ctx->pool));

          svn_hash_sets(mergeinfo_ctx->result_catalog,
                        apr_pstrdup(mergeinfo_ctx->pool, path),
                        path_mergeinfo);
        }
    }
  else
    {
      SVN_ERR_ASSERT(leaving_state == MERGEINFO_PATH
                     || leaving_state == MERGEINFO_INFO);


      svn_ra_serf__xml_note(xes, MERGEINFO_ITEM,
                            leaving_state == MERGEINFO_PATH
                              ? "path"
                              : "info",
                            cdata->data);
    }

  return SVN_NO_ERROR;
}
