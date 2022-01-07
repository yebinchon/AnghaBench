
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_serf__xml_estate_t ;
struct TYPE_10__ {scalar_t__ revision; void* has_children; void* subtractive_merge; int * revprops; int * changed_paths2; int * changed_paths; } ;
typedef TYPE_2__ svn_log_entry_t ;
typedef int svn_error_t ;
struct TYPE_11__ {scalar_t__ limit; scalar_t__ nest_level; scalar_t__ count; int * collect_paths; int * collect_revprops; scalar_t__ want_message; scalar_t__ want_date; scalar_t__ want_author; int receiver_baton; int (* receiver ) (int ,TYPE_2__*,int *) ;} ;
typedef TYPE_3__ log_context_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;


 int ADDED_PATH ;
 int COMMENT ;
 int CREATOR ;
 int DATE ;
 int DELETED_PATH ;
 int FALSE ;
 int HAS_CHILDREN ;
 int ITEM ;
 int MODIFIED_PATH ;
 int REPLACED_PATH ;
 int REVPROP ;
 int SUBTRACTIVE_MERGE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_DATE ;
 int SVN_PROP_REVISION_LOG ;
 int VERSION ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_pool_get (int *) ;
 int apr_pstrdup (int *,char*) ;
 int collect_path (int *,char,TYPE_1__ const*,int *) ;
 int collect_revprop (int *,int ,TYPE_1__ const*,char*) ;
 int stub1 (int ,TYPE_2__*,int *) ;
 int svn_cstring_atoi64 (scalar_t__*,char const*) ;
 void* svn_hash__get_bool (int *,char*,int ) ;
 char* svn_hash_gets (int *,char*) ;
 TYPE_2__* svn_log_entry_create (int *) ;
 int svn_ra_serf__xml_note (int *,int,char*,char*) ;

__attribute__((used)) static svn_error_t *
log_closed(svn_ra_serf__xml_estate_t *xes,
           void *baton,
           int leaving_state,
           const svn_string_t *cdata,
           apr_hash_t *attrs,
           apr_pool_t *scratch_pool)
{
  log_context_t *log_ctx = baton;

  if (leaving_state == ITEM)
    {
      svn_log_entry_t *log_entry;
      const char *rev_str;

      if ((log_ctx->limit > 0) && (log_ctx->nest_level == 0)
          && (++log_ctx->count > log_ctx->limit))
        {
          return SVN_NO_ERROR;
        }

      log_entry = svn_log_entry_create(scratch_pool);




      if (apr_hash_count(log_ctx->collect_paths) > 0)
        {
          log_entry->changed_paths = log_ctx->collect_paths;
          log_entry->changed_paths2 = log_ctx->collect_paths;
        }


      log_entry->revprops = log_ctx->collect_revprops;

      log_entry->has_children = svn_hash__get_bool(attrs,
                                                   "has-children",
                                                   FALSE);
      log_entry->subtractive_merge = svn_hash__get_bool(attrs,
                                                        "subtractive-merge",
                                                        FALSE);

      rev_str = svn_hash_gets(attrs, "revision");
      if (rev_str)
        {
          apr_int64_t rev;

          SVN_ERR(svn_cstring_atoi64(&rev, rev_str));
          log_entry->revision = (svn_revnum_t)rev;
        }
      else
        log_entry->revision = SVN_INVALID_REVNUM;


      SVN_ERR(log_ctx->receiver(log_ctx->receiver_baton,
                                log_entry,
                                scratch_pool));

      if (log_entry->has_children)
        {
          log_ctx->nest_level++;
        }
      if (! SVN_IS_VALID_REVNUM(log_entry->revision))
        {
          SVN_ERR_ASSERT(log_ctx->nest_level);
          log_ctx->nest_level--;
        }




      log_ctx->collect_revprops = ((void*)0);
      log_ctx->collect_paths = ((void*)0);
    }
  else if (leaving_state == VERSION)
    {
      svn_ra_serf__xml_note(xes, ITEM, "revision", cdata->data);
    }
  else if (leaving_state == CREATOR)
    {
      if (log_ctx->want_author)
        {
          SVN_ERR(collect_revprop(log_ctx->collect_revprops,
                                  SVN_PROP_REVISION_AUTHOR,
                                  cdata,
                                  svn_hash_gets(attrs, "encoding")));
        }
    }
  else if (leaving_state == DATE)
    {
      if (log_ctx->want_date)
        {
          SVN_ERR(collect_revprop(log_ctx->collect_revprops,
                                  SVN_PROP_REVISION_DATE,
                                  cdata,
                                  svn_hash_gets(attrs, "encoding")));
        }
    }
  else if (leaving_state == COMMENT)
    {
      if (log_ctx->want_message)
        {
          SVN_ERR(collect_revprop(log_ctx->collect_revprops,
                                  SVN_PROP_REVISION_LOG,
                                  cdata,
                                  svn_hash_gets(attrs, "encoding")));
        }
    }
  else if (leaving_state == REVPROP)
    {
      apr_pool_t *result_pool = apr_hash_pool_get(log_ctx->collect_revprops);

      SVN_ERR(collect_revprop(
                log_ctx->collect_revprops,
                apr_pstrdup(result_pool,
                            svn_hash_gets(attrs, "name")),
                cdata,
                svn_hash_gets(attrs, "encoding")
                ));
    }
  else if (leaving_state == HAS_CHILDREN)
    {
      svn_ra_serf__xml_note(xes, ITEM, "has-children", "yes");
    }
  else if (leaving_state == SUBTRACTIVE_MERGE)
    {
      svn_ra_serf__xml_note(xes, ITEM, "subtractive-merge", "yes");
    }
  else
    {
      char action;

      if (leaving_state == ADDED_PATH)
        action = 'A';
      else if (leaving_state == REPLACED_PATH)
        action = 'R';
      else if (leaving_state == DELETED_PATH)
        action = 'D';
      else
        {
          SVN_ERR_ASSERT(leaving_state == MODIFIED_PATH);
          action = 'M';
        }

      SVN_ERR(collect_path(log_ctx->collect_paths, action, cdata, attrs));
    }

  return SVN_NO_ERROR;
}
