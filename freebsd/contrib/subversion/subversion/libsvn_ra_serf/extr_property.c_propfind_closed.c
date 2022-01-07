
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_error_t ;
struct TYPE_11__ {char const* depth; char* path; int * ps_props; int prop_func_baton; int (* prop_func ) (int ,char const*,char const*,char const*,TYPE_1__ const*,int *) ;} ;
typedef TYPE_2__ propfind_context_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int COLLECTION ;
 char const* D_ ;
 int HREF ;
 int HREF_VALUE ;
 int MULTISTATUS ;
 int PROPSTAT ;
 int PROPVAL ;
 int RESPONSE ;
 int STATUS ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_RA_DAV_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_pool_get (int *) ;
 char* apr_hash_this_key (int *) ;
 void* apr_hash_this_val (int *) ;
 int parse_status_code (char*) ;
 int set_ns_prop (int *,char const*,char const*,TYPE_1__ const*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (int ,char const*,char const*,char*,TYPE_1__ const*,int *) ;
 int stub2 (int ,char const*,char const*,char const*,TYPE_1__ const*,int *) ;
 TYPE_1__* svn_base64_decode_string (TYPE_1__ const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 char* svn_hash_gets (int *,char*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_ra_serf__xml_gather_since (int *,int) ;
 int svn_ra_serf__xml_note (int *,int,char*,char const*) ;
 TYPE_1__* svn_string_create (char const*,int *) ;
 char* svn_urlpath__canonicalize (char*,int *) ;

__attribute__((used)) static svn_error_t *
propfind_closed(svn_ra_serf__xml_estate_t *xes,
                void *baton,
                int leaving_state,
                const svn_string_t *cdata,
                apr_hash_t *attrs,
                apr_pool_t *scratch_pool)
{
  propfind_context_t *ctx = baton;

  if (leaving_state == MULTISTATUS)
    {




    }
  else if (leaving_state == HREF)
    {
      const char *path;

      if (strcmp(ctx->depth, "1") == 0)
        path = svn_urlpath__canonicalize(cdata->data, scratch_pool);
      else
        path = ctx->path;

      svn_ra_serf__xml_note(xes, RESPONSE, "path", path);

      SVN_ERR(ctx->prop_func(ctx->prop_func_baton,
                             path,
                             D_, "href",
                             cdata, scratch_pool));
    }
  else if (leaving_state == COLLECTION)
    {
      svn_ra_serf__xml_note(xes, PROPVAL, "altvalue", "collection");
    }
  else if (leaving_state == HREF_VALUE)
    {
      svn_ra_serf__xml_note(xes, PROPVAL, "altvalue", cdata->data);
    }
  else if (leaving_state == STATUS)
    {




      apr_int64_t status = parse_status_code(cdata->data);
      if (status != 200)
        svn_ra_serf__xml_note(xes, PROPSTAT, "ignore-prop", "*");
    }
  else if (leaving_state == PROPVAL)
    {
      const char *encoding;
      const svn_string_t *val_str;
      const char *ns;
      const char *name;
      const char *altvalue;

      if ((altvalue = svn_hash_gets(attrs, "altvalue")) != ((void*)0))
        {
          val_str = svn_string_create(altvalue, scratch_pool);
        }
      else if ((encoding = svn_hash_gets(attrs, "V:encoding")) != ((void*)0))
        {
          if (strcmp(encoding, "base64") != 0)
            return svn_error_createf(SVN_ERR_RA_DAV_MALFORMED_DATA,
                                     ((void*)0),
                                     _("Got unrecognized encoding '%s'"),
                                     encoding);


          val_str = svn_base64_decode_string(cdata, scratch_pool);
        }
      else
        {

          val_str = cdata;
        }
      ns = svn_hash_gets(attrs, "ns");
      name = svn_hash_gets(attrs, "name");

      set_ns_prop(ctx->ps_props, ns, name, val_str,
                  apr_hash_pool_get(ctx->ps_props));
    }
  else
    {
      apr_hash_t *gathered;

      SVN_ERR_ASSERT(leaving_state == PROPSTAT);

      gathered = svn_ra_serf__xml_gather_since(xes, RESPONSE);




      if (! svn_hash_gets(gathered, "ignore-prop"))
        {
          apr_hash_index_t *hi_ns;
          const char *path;
          apr_pool_t *iterpool = svn_pool_create(scratch_pool);


          path = svn_hash_gets(gathered, "path");
          if (!path)
            path = ctx->path;

          for (hi_ns = apr_hash_first(scratch_pool, ctx->ps_props);
               hi_ns;
               hi_ns = apr_hash_next(hi_ns))
            {
              const char *ns = apr_hash_this_key(hi_ns);
              apr_hash_t *props = apr_hash_this_val(hi_ns);
              apr_hash_index_t *hi_prop;

              svn_pool_clear(iterpool);

              for (hi_prop = apr_hash_first(iterpool, props);
                   hi_prop;
                   hi_prop = apr_hash_next(hi_prop))
                {
                  const char *name = apr_hash_this_key(hi_prop);
                  const svn_string_t *value = apr_hash_this_val(hi_prop);

                  SVN_ERR(ctx->prop_func(ctx->prop_func_baton, path,
                                         ns, name, value, iterpool));
                }
            }

          svn_pool_destroy(iterpool);
        }

      ctx->ps_props = ((void*)0);
    }

  return SVN_NO_ERROR;
}
