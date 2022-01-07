
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_ra_serf__xml_estate_t ;
struct TYPE_4__ {char const* name; int const* value; } ;
typedef TYPE_1__ svn_prop_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int prop_diffs; int rev_props; int state_pool; int * stream; int file_rev_baton; int (* file_rev ) (int ,char const*,int ,int ,int ,int *,int *,int ,int *) ;} ;
typedef TYPE_2__ blame_context_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int FILE_REV ;
 int MERGED_REVISION ;
 int REMOVE_PROP ;
 int REV_PROP ;
 int SET_PROP ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int SVN_STR_TO_REV (char const*) ;
 int TXDELTA ;
 TYPE_1__* apr_array_push (int ) ;
 char* apr_pstrdup (int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (int ,char const*,int ,int ,int ,int *,int *,int ,int *) ;
 int * svn_base64_decode_string (int const*,int ) ;
 char* svn_hash_gets (int *,char*) ;
 int svn_hash_sets (int ,char const*,int const*) ;
 int svn_ra_serf__xml_note (int *,int,char*,char*) ;
 int svn_stream_close (int *) ;
 int * svn_string_dup (int const*,int ) ;

__attribute__((used)) static svn_error_t *
blame_closed(svn_ra_serf__xml_estate_t *xes,
             void *baton,
             int leaving_state,
             const svn_string_t *cdata,
             apr_hash_t *attrs,
             apr_pool_t *scratch_pool)
{
  blame_context_t *blame_ctx = baton;

  if (leaving_state == FILE_REV)
    {


      if (blame_ctx->stream == ((void*)0))
        {
          const char *path;
          const char *rev;

          path = svn_hash_gets(attrs, "path");
          rev = svn_hash_gets(attrs, "rev");


          SVN_ERR(blame_ctx->file_rev(blame_ctx->file_rev_baton,
                                      path, SVN_STR_TO_REV(rev),
                                      blame_ctx->rev_props,
                                      FALSE ,
                                      ((void*)0), ((void*)0),
                                      blame_ctx->prop_diffs,
                                      scratch_pool));
        }
    }
  else if (leaving_state == MERGED_REVISION)
    {
      svn_ra_serf__xml_note(xes, FILE_REV, "merged-revision", "*");
    }
  else if (leaving_state == TXDELTA)
    {
      SVN_ERR(svn_stream_close(blame_ctx->stream));
    }
  else
    {
      const char *name;
      const svn_string_t *value;

      SVN_ERR_ASSERT(leaving_state == REV_PROP
                     || leaving_state == SET_PROP
                     || leaving_state == REMOVE_PROP);

      name = apr_pstrdup(blame_ctx->state_pool,
                         svn_hash_gets(attrs, "name"));

      if (leaving_state == REMOVE_PROP)
        {
          value = ((void*)0);
        }
      else
        {
          const char *encoding = svn_hash_gets(attrs, "encoding");

          if (encoding && strcmp(encoding, "base64") == 0)
            value = svn_base64_decode_string(cdata, blame_ctx->state_pool);
          else
            value = svn_string_dup(cdata, blame_ctx->state_pool);
        }

      if (leaving_state == REV_PROP)
        {
          svn_hash_sets(blame_ctx->rev_props, name, value);
        }
      else
        {
          svn_prop_t *prop = apr_array_push(blame_ctx->prop_diffs);

          prop->name = name;
          prop->value = value;
        }
    }

  return SVN_NO_ERROR;
}
