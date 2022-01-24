#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_estate_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {char const* depth; char* path; int /*<<< orphan*/ * ps_props; int /*<<< orphan*/  prop_func_baton; int /*<<< orphan*/  (* prop_func ) (int /*<<< orphan*/ ,char const*,char const*,char const*,TYPE_1__ const*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ propfind_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int COLLECTION ; 
 char const* D_ ; 
 int HREF ; 
 int HREF_VALUE ; 
 int MULTISTATUS ; 
 int PROPSTAT ; 
 int PROPVAL ; 
 int RESPONSE ; 
 int STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,char const*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,char const*,char*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*,char const*,char const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int,char*,char const*) ; 
 TYPE_1__* FUNC21 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC22 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC23(svn_ra_serf__xml_estate_t *xes,
                void *baton,
                int leaving_state,
                const svn_string_t *cdata,
                apr_hash_t *attrs,
                apr_pool_t *scratch_pool)
{
  propfind_context_t *ctx = baton;

  if (leaving_state == MULTISTATUS)
    {
      /* We've gathered all the data from the reponse. Add this item
         onto the "done list". External callers will then know this
         request has been completed (tho stray response bytes may still
         arrive).  */
    }
  else if (leaving_state == HREF)
    {
      const char *path;

      if (FUNC10(ctx->depth, "1") == 0)
        path = FUNC22(cdata->data, scratch_pool);
      else
        path = ctx->path;

      FUNC20(xes, RESPONSE, "path", path);

      FUNC0(ctx->prop_func(ctx->prop_func_baton,
                             path,
                             D_, "href",
                             cdata, scratch_pool));
    }
  else if (leaving_state == COLLECTION)
    {
      FUNC20(xes, PROPVAL, "altvalue", "collection");
    }
  else if (leaving_state == HREF_VALUE)
    {
      FUNC20(xes, PROPVAL, "altvalue", cdata->data);
    }
  else if (leaving_state == STATUS)
    {
      /* Parse the status field, and remember if this is a property
         that we wish to ignore.  (Typically, if it's not a 200, the
         status will be 404 to indicate that a property we
         specifically requested from the server doesn't exist.)  */
      apr_int64_t status = FUNC8(cdata->data);
      if (status != 200)
        FUNC20(xes, PROPSTAT, "ignore-prop", "*");
    }
  else if (leaving_state == PROPVAL)
    {
      const char *encoding;
      const svn_string_t *val_str;
      const char *ns;
      const char *name;
      const char *altvalue;

      if ((altvalue = FUNC15(attrs, "altvalue")) != NULL)
        {
          val_str = FUNC21(altvalue, scratch_pool);
        }
      else if ((encoding = FUNC15(attrs, "V:encoding")) != NULL)
        {
          if (FUNC10(encoding, "base64") != 0)
            return FUNC14(SVN_ERR_RA_DAV_MALFORMED_DATA,
                                     NULL,
                                     FUNC2("Got unrecognized encoding '%s'"),
                                     encoding);

          /* Decode into the right pool.  */
          val_str = FUNC13(cdata, scratch_pool);
        }
      else
        {
          /* Copy into the right pool.  */
          val_str = cdata;
        }

      /* The current path sits on the RESPONSE state.

         Now, it would be nice if we could, at this point, know that
         the status code for this property indicated a problem -- then
         we could simply bail out here and ignore the property.
         Sadly, though, we might get the status code *after* we get
         the property value.  So we'll carry on with our processing
         here, setting the property and value as expected.  Once we
         know for sure the status code associate with the property,
         we'll decide its fate.  */

      ns = FUNC15(attrs, "ns");
      name = FUNC15(attrs, "name");

      FUNC9(ctx->ps_props, ns, name, val_str,
                  FUNC5(ctx->ps_props));
    }
  else
    {
      apr_hash_t *gathered;

      FUNC1(leaving_state == PROPSTAT);

      gathered = FUNC19(xes, RESPONSE);

      /* If we've squirreled away a note that says we want to ignore
         these properties, we'll do so.  Otherwise, we need to copy
         them from the temporary hash into the ctx->ret_props hash. */
      if (! FUNC15(gathered, "ignore-prop"))
        {
          apr_hash_index_t *hi_ns;
          const char *path;
          apr_pool_t *iterpool = FUNC17(scratch_pool);


          path = FUNC15(gathered, "path");
          if (!path)
            path = ctx->path;

          for (hi_ns = FUNC3(scratch_pool, ctx->ps_props);
               hi_ns;
               hi_ns = FUNC4(hi_ns))
            {
              const char *ns = FUNC6(hi_ns);
              apr_hash_t *props = FUNC7(hi_ns);
              apr_hash_index_t *hi_prop;

              FUNC16(iterpool);

              for (hi_prop = FUNC3(iterpool, props);
                   hi_prop;
                   hi_prop = FUNC4(hi_prop))
                {
                  const char *name = FUNC6(hi_prop);
                  const svn_string_t *value = FUNC7(hi_prop);

                  FUNC0(ctx->prop_func(ctx->prop_func_baton, path,
                                         ns, name, value, iterpool));
                }
            }

          FUNC18(iterpool);
        }

      ctx->ps_props = NULL; /* Allocated in PROPSTAT state pool */
    }

  return SVN_NO_ERROR;
}