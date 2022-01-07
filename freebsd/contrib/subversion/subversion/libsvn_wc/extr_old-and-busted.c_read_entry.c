
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; char const* checksum; char const* cmt_author; char* cachable_props; char* present_props; char const* prejfile; char const* conflict_old; char const* conflict_new; char const* conflict_wrk; char const* uuid; char const* lock_token; char const* lock_owner; char const* lock_comment; char const* changelist; char const* tree_conflict_data; int file_external_rev; int file_external_peg_rev; int file_external_path; int depth; scalar_t__ working_size; int keep_local; int lock_creation_date; int incomplete; int absent; int deleted; int copyfrom_rev; scalar_t__ copyfrom_url; int copied; void* has_prop_mods; void* has_props; int cmt_rev; int cmt_date; int text_time; int schedule; scalar_t__ url; scalar_t__ repos; int revision; int kind; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;


 int ENTRIES_BOOL_ABSENT ;
 int ENTRIES_BOOL_COPIED ;
 int ENTRIES_BOOL_DELETED ;
 int ENTRIES_BOOL_INCOMPLETE ;
 int ENTRIES_BOOL_KEEP_LOCAL ;
 int ENTRIES_VALUE_ADD ;
 int ENTRIES_VALUE_DELETE ;
 int ENTRIES_VALUE_DIR ;
 int ENTRIES_VALUE_FILE ;
 int ENTRIES_VALUE_REPLACE ;
 void* FALSE ;
 int MAYBE_DONE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ENTRY_ATTRIBUTE_INVALID ;
 int SVN_ERR_NODE_UNKNOWN_KIND ;
 int SVN_ERR_WC_CORRUPT ;
 int * SVN_NO_ERROR ;
 char const* SVN_WC_ENTRY_THIS_DIR ;
 int _ (char*) ;
 TYPE_1__* alloc_entry (int *) ;
 scalar_t__ apr_strtoi64 (char const*,int *,int ) ;
 int read_bool (int *,int ,char**,char const*) ;
 int read_path (char const**,char**,char const*,int *) ;
 int read_revnum (int *,char**,char const*,int *) ;
 int read_str (char const**,char**,char const*,int *) ;
 int read_time (int *,char**,char const*,int *) ;
 int read_url (scalar_t__*,char**,char const*,int,int *) ;
 int read_val (char const**,char**,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_depth_exclude ;
 int svn_depth_from_word (char const*) ;
 int svn_depth_infinity ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_node_dir ;
 int svn_node_file ;
 int svn_node_none ;
 int svn_uri__is_ancestor (scalar_t__,scalar_t__) ;
 int svn_wc__unserialize_file_external (int *,int *,int *,char const*,int *) ;
 int svn_wc_schedule_add ;
 int svn_wc_schedule_delete ;
 int svn_wc_schedule_normal ;
 int svn_wc_schedule_replace ;

__attribute__((used)) static svn_error_t *
read_entry(svn_wc_entry_t **new_entry,
           char **buf, const char *end,
           int entries_format,
           apr_pool_t *pool)
{
  svn_wc_entry_t *entry = alloc_entry(pool);
  const char *name;




  SVN_ERR(read_path(&name, buf, end, pool));
  entry->name = name ? name : SVN_WC_ENTRY_THIS_DIR;


  {
    const char *kindstr;
    SVN_ERR(read_val(&kindstr, buf, end));
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
    else
      entry->kind = svn_node_none;
  }
  if (**buf == '\f') goto done;


  SVN_ERR(read_revnum(&entry->revision, buf, end, pool));
  if (**buf == '\f') goto done;


  SVN_ERR(read_url(&entry->url, buf, end, entries_format, pool));
  if (**buf == '\f') goto done;


  SVN_ERR(read_url(&entry->repos, buf, end, entries_format, pool));
  if (entry->repos && entry->url
      && ! svn_uri__is_ancestor(entry->repos, entry->url))
    return svn_error_createf(SVN_ERR_WC_CORRUPT, ((void*)0),
                             _("Entry for '%s' has invalid repository "
                               "root"),
                             name ? name : SVN_WC_ENTRY_THIS_DIR);
  if (**buf == '\f') goto done;


  {
    const char *schedulestr;
    SVN_ERR(read_val(&schedulestr, buf, end));
    entry->schedule = svn_wc_schedule_normal;
    if (schedulestr)
      {
        if (strcmp(schedulestr, ENTRIES_VALUE_ADD) == 0)
          entry->schedule = svn_wc_schedule_add;
        else if (strcmp(schedulestr, ENTRIES_VALUE_DELETE) == 0)
          entry->schedule = svn_wc_schedule_delete;
        else if (strcmp(schedulestr, ENTRIES_VALUE_REPLACE) == 0)
          entry->schedule = svn_wc_schedule_replace;
        else
          return svn_error_createf(
            SVN_ERR_ENTRY_ATTRIBUTE_INVALID, ((void*)0),
            _("Entry '%s' has invalid 'schedule' value"),
            name ? name : SVN_WC_ENTRY_THIS_DIR);
      }
  }
  if (**buf == '\f') goto done;


  SVN_ERR(read_time(&entry->text_time, buf, end, pool));
  if (**buf == '\f') goto done;


  SVN_ERR(read_str(&entry->checksum, buf, end, pool));
  if (**buf == '\f') goto done;


  SVN_ERR(read_time(&entry->cmt_date, buf, end, pool));
  if (**buf == '\f') goto done;

  SVN_ERR(read_revnum(&entry->cmt_rev, buf, end, pool));
  if (**buf == '\f') goto done;

  SVN_ERR(read_str(&entry->cmt_author, buf, end, pool));
  if (**buf == '\f') goto done;




  {
    const char *unused_value;


    SVN_ERR(read_val(&unused_value, buf, end));
    entry->has_props = FALSE;
    if (**buf == '\f') goto done;


    SVN_ERR(read_val(&unused_value, buf, end));
    entry->has_prop_mods = FALSE;
    if (**buf == '\f') goto done;






    SVN_ERR(read_val(&unused_value, buf, end));
    entry->cachable_props = "";
    if (**buf == '\f') goto done;


    SVN_ERR(read_val(&unused_value, buf, end));
    entry->present_props = "";
    if (**buf == '\f') goto done;
  }


  {
    SVN_ERR(read_path(&entry->prejfile, buf, end, pool));
    if (**buf == '\f') goto done;
    SVN_ERR(read_path(&entry->conflict_old, buf, end, pool));
    if (**buf == '\f') goto done;
    SVN_ERR(read_path(&entry->conflict_new, buf, end, pool));
    if (**buf == '\f') goto done;
    SVN_ERR(read_path(&entry->conflict_wrk, buf, end, pool));
    if (**buf == '\f') goto done;
  }


  SVN_ERR(read_bool(&entry->copied, ENTRIES_BOOL_COPIED, buf, end));
  if (**buf == '\f') goto done;

  SVN_ERR(read_url(&entry->copyfrom_url, buf, end, entries_format, pool));
  if (**buf == '\f') goto done;
  SVN_ERR(read_revnum(&entry->copyfrom_rev, buf, end, pool));
  if (**buf == '\f') goto done;


  SVN_ERR(read_bool(&entry->deleted, ENTRIES_BOOL_DELETED, buf, end));
  if (**buf == '\f') goto done;


  SVN_ERR(read_bool(&entry->absent, ENTRIES_BOOL_ABSENT, buf, end));
  if (**buf == '\f') goto done;


  SVN_ERR(read_bool(&entry->incomplete, ENTRIES_BOOL_INCOMPLETE, buf, end));
  if (**buf == '\f') goto done;


  SVN_ERR(read_str(&entry->uuid, buf, end, pool));
  if (**buf == '\f') goto done;


  SVN_ERR(read_str(&entry->lock_token, buf, end, pool));
  if (**buf == '\f') goto done;


  SVN_ERR(read_str(&entry->lock_owner, buf, end, pool));
  if (**buf == '\f') goto done;


  SVN_ERR(read_str(&entry->lock_comment, buf, end, pool));
  if (**buf == '\f') goto done;


  SVN_ERR(read_time(&entry->lock_creation_date, buf, end, pool));
  if (**buf == '\f') goto done;


  SVN_ERR(read_str(&entry->changelist, buf, end, pool));
  if (**buf == '\f') goto done;


  SVN_ERR(read_bool(&entry->keep_local, ENTRIES_BOOL_KEEP_LOCAL, buf, end));
  if (**buf == '\f') goto done;


  {
    const char *val;



    SVN_ERR(read_val(&val, buf, end));
    if (val)
      entry->working_size = (apr_off_t)apr_strtoi64(val, ((void*)0), 0);
  }
  if (**buf == '\f') goto done;


  {
    const char *result;
    SVN_ERR(read_val(&result, buf, end));
    if (result)
      {
        svn_boolean_t invalid;
        svn_boolean_t is_this_dir;

        entry->depth = svn_depth_from_word(result);






        is_this_dir = !name;

        invalid = is_this_dir != (entry->depth != svn_depth_exclude);
        if (entry->depth != svn_depth_infinity && invalid)
          return svn_error_createf(
            SVN_ERR_ENTRY_ATTRIBUTE_INVALID, ((void*)0),
            _("Entry '%s' has invalid 'depth' value"),
            name ? name : SVN_WC_ENTRY_THIS_DIR);
      }
    else
      entry->depth = svn_depth_infinity;

  }
  if (**buf == '\f') goto done;


  SVN_ERR(read_str(&entry->tree_conflict_data, buf, end, pool));
  if (**buf == '\f') goto done;


  {
    const char *str;
    SVN_ERR(read_str(&str, buf, end, pool));
    SVN_ERR(svn_wc__unserialize_file_external(&entry->file_external_path,
                                              &entry->file_external_peg_rev,
                                              &entry->file_external_rev,
                                              str,
                                              pool));
  }
  if (**buf == '\f') goto done;

 done:
  *new_entry = entry;
  return SVN_NO_ERROR;
}
