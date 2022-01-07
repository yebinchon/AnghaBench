
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; scalar_t__ working_size; scalar_t__ lock_creation_date; void* lock_comment; void* lock_owner; void* lock_token; void* cmt_author; void* cmt_rev; scalar_t__ cmt_date; void* uuid; void* checksum; scalar_t__ text_time; int incomplete; int absent; int deleted; void* copyfrom_rev; void* copyfrom_url; int copied; void* conflict_wrk; void* conflict_new; void* conflict_old; void* prejfile; void* schedule; int kind; void* url; void* repos; void* revision; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_hash_t ;


 int ENTRIES_ATTR_ABSENT ;
 int ENTRIES_ATTR_CHECKSUM ;
 int ENTRIES_ATTR_CMT_AUTHOR ;
 int ENTRIES_ATTR_CMT_DATE ;
 int ENTRIES_ATTR_CMT_REV ;
 int ENTRIES_ATTR_CONFLICT_NEW ;
 int ENTRIES_ATTR_CONFLICT_OLD ;
 int ENTRIES_ATTR_CONFLICT_WRK ;
 int ENTRIES_ATTR_COPIED ;
 int ENTRIES_ATTR_COPYFROM_REV ;
 int ENTRIES_ATTR_COPYFROM_URL ;
 int ENTRIES_ATTR_DELETED ;
 int ENTRIES_ATTR_INCOMPLETE ;
 int ENTRIES_ATTR_KIND ;
 int ENTRIES_ATTR_LOCK_COMMENT ;
 int ENTRIES_ATTR_LOCK_CREATION_DATE ;
 int ENTRIES_ATTR_LOCK_OWNER ;
 int ENTRIES_ATTR_LOCK_TOKEN ;
 int ENTRIES_ATTR_NAME ;
 int ENTRIES_ATTR_PREJFILE ;
 int ENTRIES_ATTR_REPOS ;
 int ENTRIES_ATTR_REVISION ;
 int ENTRIES_ATTR_SCHEDULE ;
 int ENTRIES_ATTR_TEXT_TIME ;
 int ENTRIES_ATTR_URL ;
 int ENTRIES_ATTR_UUID ;
 int ENTRIES_ATTR_WORKING_SIZE ;
 char* ENTRIES_VALUE_ADD ;
 char* ENTRIES_VALUE_DELETE ;
 char* ENTRIES_VALUE_DIR ;
 char* ENTRIES_VALUE_FILE ;
 char* ENTRIES_VALUE_REPLACE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ENTRY_ATTRIBUTE_INVALID ;
 int SVN_ERR_NODE_UNKNOWN_KIND ;
 int SVN_ERR_WC_CORRUPT ;
 void* SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* SVN_STR_TO_REV (char const*) ;
 char const* SVN_WC_ENTRY_THIS_DIR ;
 int _ (char*) ;
 TYPE_1__* alloc_entry (int *) ;
 char const* apr_pstrdup (int *,char const*) ;
 scalar_t__ apr_strtoi64 (char const*,int *,int ) ;
 int do_bool_attr (int *,int *,int ,char const*) ;
 void* extract_string (int *,int ,int *) ;
 void* extract_string_normalize (int *,int ,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 char* svn_hash_gets (int *,int ) ;
 int svn_node_dir ;
 int svn_node_file ;
 int svn_node_none ;
 int svn_time_from_cstring (scalar_t__*,char const*,int *) ;
 int svn_uri__is_ancestor (void*,void*) ;
 void* svn_uri_canonicalize (void*,int *) ;
 void* svn_wc_schedule_add ;
 void* svn_wc_schedule_delete ;
 void* svn_wc_schedule_normal ;
 void* svn_wc_schedule_replace ;

__attribute__((used)) static svn_error_t *
atts_to_entry(svn_wc_entry_t **new_entry,
              apr_hash_t *atts,
              apr_pool_t *pool)
{
  svn_wc_entry_t *entry = alloc_entry(pool);
  const char *name;


  name = svn_hash_gets(atts, ENTRIES_ATTR_NAME);
  entry->name = name ? apr_pstrdup(pool, name) : SVN_WC_ENTRY_THIS_DIR;




  {
    const char *revision_str
      = svn_hash_gets(atts, ENTRIES_ATTR_REVISION);

    if (revision_str)
      entry->revision = SVN_STR_TO_REV(revision_str);
    else
      entry->revision = SVN_INVALID_REVNUM;
  }




  entry->url = extract_string(atts, ENTRIES_ATTR_URL, pool);
  if (entry->url)
    entry->url = svn_uri_canonicalize(entry->url, pool);




  entry->repos = extract_string(atts, ENTRIES_ATTR_REPOS, pool);
  if (entry->repos)
    entry->repos = svn_uri_canonicalize(entry->repos, pool);

  if (entry->url && entry->repos
      && !svn_uri__is_ancestor(entry->repos, entry->url))
    return svn_error_createf(SVN_ERR_WC_CORRUPT, ((void*)0),
                             _("Entry for '%s' has invalid repository "
                               "root"),
                             name ? name : SVN_WC_ENTRY_THIS_DIR);



  {
    const char *kindstr
      = svn_hash_gets(atts, ENTRIES_ATTR_KIND);

    entry->kind = svn_node_none;
    if (kindstr)
      {
        if (strcmp(kindstr, ENTRIES_VALUE_FILE) == 0)
          entry->kind = svn_node_file;
        else if (strcmp(kindstr, ENTRIES_VALUE_DIR) == 0)
          entry->kind = svn_node_dir;
        else
          return svn_error_createf
            (SVN_ERR_NODE_UNKNOWN_KIND, ((void*)0),
             _("Entry '%s' has invalid node kind"),
             (name ? name : SVN_WC_ENTRY_THIS_DIR));
      }
  }



  {
    const char *schedulestr
      = svn_hash_gets(atts, ENTRIES_ATTR_SCHEDULE);

    entry->schedule = svn_wc_schedule_normal;
    if (schedulestr)
      {
        if (strcmp(schedulestr, ENTRIES_VALUE_ADD) == 0)
          entry->schedule = svn_wc_schedule_add;
        else if (strcmp(schedulestr, ENTRIES_VALUE_DELETE) == 0)
          entry->schedule = svn_wc_schedule_delete;
        else if (strcmp(schedulestr, ENTRIES_VALUE_REPLACE) == 0)
          entry->schedule = svn_wc_schedule_replace;
        else if (strcmp(schedulestr, "") == 0)
          entry->schedule = svn_wc_schedule_normal;
        else
          return svn_error_createf(
                   SVN_ERR_ENTRY_ATTRIBUTE_INVALID, ((void*)0),
                   _("Entry '%s' has invalid 'schedule' value"),
                   (name ? name : SVN_WC_ENTRY_THIS_DIR));
      }
  }


  entry->prejfile = extract_string_normalize(atts,
                                             ENTRIES_ATTR_PREJFILE,
                                             pool);
  entry->conflict_old = extract_string_normalize(atts,
                                                 ENTRIES_ATTR_CONFLICT_OLD,
                                                 pool);
  entry->conflict_new = extract_string_normalize(atts,
                                                 ENTRIES_ATTR_CONFLICT_NEW,
                                                 pool);
  entry->conflict_wrk = extract_string_normalize(atts,
                                                 ENTRIES_ATTR_CONFLICT_WRK,
                                                 pool);



  SVN_ERR(do_bool_attr(&entry->copied, atts, ENTRIES_ATTR_COPIED, name));


  entry->copyfrom_url = extract_string(atts, ENTRIES_ATTR_COPYFROM_URL, pool);


  {
    const char *revstr;

    revstr = svn_hash_gets(atts, ENTRIES_ATTR_COPYFROM_REV);
    if (revstr)
      entry->copyfrom_rev = SVN_STR_TO_REV(revstr);
  }




  SVN_ERR(do_bool_attr(&entry->deleted, atts, ENTRIES_ATTR_DELETED, name));




  SVN_ERR(do_bool_attr(&entry->absent, atts, ENTRIES_ATTR_ABSENT, name));




  SVN_ERR(do_bool_attr(&entry->incomplete, atts, ENTRIES_ATTR_INCOMPLETE,
                       name));



  {
    const char *text_timestr;

    text_timestr = svn_hash_gets(atts, ENTRIES_ATTR_TEXT_TIME);
    if (text_timestr)
      SVN_ERR(svn_time_from_cstring(&entry->text_time, text_timestr, pool));





  }



  entry->checksum = extract_string(atts, ENTRIES_ATTR_CHECKSUM, pool);




  entry->uuid = extract_string(atts, ENTRIES_ATTR_UUID, pool);


  {
    const char *cmt_datestr, *cmt_revstr;

    cmt_datestr = svn_hash_gets(atts, ENTRIES_ATTR_CMT_DATE);
    if (cmt_datestr)
      {
        SVN_ERR(svn_time_from_cstring(&entry->cmt_date, cmt_datestr, pool));
      }
    else
      entry->cmt_date = 0;

    cmt_revstr = svn_hash_gets(atts, ENTRIES_ATTR_CMT_REV);
    if (cmt_revstr)
      {
        entry->cmt_rev = SVN_STR_TO_REV(cmt_revstr);
      }
    else
      entry->cmt_rev = SVN_INVALID_REVNUM;

    entry->cmt_author = extract_string(atts, ENTRIES_ATTR_CMT_AUTHOR, pool);
  }


  entry->lock_token = extract_string(atts, ENTRIES_ATTR_LOCK_TOKEN, pool);
  entry->lock_owner = extract_string(atts, ENTRIES_ATTR_LOCK_OWNER, pool);
  entry->lock_comment = extract_string(atts, ENTRIES_ATTR_LOCK_COMMENT, pool);
  {
    const char *cdate_str =
      svn_hash_gets(atts, ENTRIES_ATTR_LOCK_CREATION_DATE);
    if (cdate_str)
      {
        SVN_ERR(svn_time_from_cstring(&entry->lock_creation_date,
                                      cdate_str, pool));
      }
  }
  {
    const char *val = svn_hash_gets(atts, ENTRIES_ATTR_WORKING_SIZE);
    if (val)
      {

        entry->working_size = (apr_off_t)apr_strtoi64(val, ((void*)0), 0);
      }
  }

  *new_entry = entry;
  return SVN_NO_ERROR;
}
