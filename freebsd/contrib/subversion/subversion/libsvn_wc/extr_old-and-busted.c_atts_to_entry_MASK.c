#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* name; scalar_t__ working_size; scalar_t__ lock_creation_date; void* lock_comment; void* lock_owner; void* lock_token; void* cmt_author; void* cmt_rev; scalar_t__ cmt_date; void* uuid; void* checksum; scalar_t__ text_time; int /*<<< orphan*/  incomplete; int /*<<< orphan*/  absent; int /*<<< orphan*/  deleted; void* copyfrom_rev; void* copyfrom_url; int /*<<< orphan*/  copied; void* conflict_wrk; void* conflict_new; void* conflict_old; void* prejfile; void* schedule; int /*<<< orphan*/  kind; void* url; void* repos; void* revision; } ;
typedef  TYPE_1__ svn_wc_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRIES_ATTR_ABSENT ; 
 int /*<<< orphan*/  ENTRIES_ATTR_CHECKSUM ; 
 int /*<<< orphan*/  ENTRIES_ATTR_CMT_AUTHOR ; 
 int /*<<< orphan*/  ENTRIES_ATTR_CMT_DATE ; 
 int /*<<< orphan*/  ENTRIES_ATTR_CMT_REV ; 
 int /*<<< orphan*/  ENTRIES_ATTR_CONFLICT_NEW ; 
 int /*<<< orphan*/  ENTRIES_ATTR_CONFLICT_OLD ; 
 int /*<<< orphan*/  ENTRIES_ATTR_CONFLICT_WRK ; 
 int /*<<< orphan*/  ENTRIES_ATTR_COPIED ; 
 int /*<<< orphan*/  ENTRIES_ATTR_COPYFROM_REV ; 
 int /*<<< orphan*/  ENTRIES_ATTR_COPYFROM_URL ; 
 int /*<<< orphan*/  ENTRIES_ATTR_DELETED ; 
 int /*<<< orphan*/  ENTRIES_ATTR_INCOMPLETE ; 
 int /*<<< orphan*/  ENTRIES_ATTR_KIND ; 
 int /*<<< orphan*/  ENTRIES_ATTR_LOCK_COMMENT ; 
 int /*<<< orphan*/  ENTRIES_ATTR_LOCK_CREATION_DATE ; 
 int /*<<< orphan*/  ENTRIES_ATTR_LOCK_OWNER ; 
 int /*<<< orphan*/  ENTRIES_ATTR_LOCK_TOKEN ; 
 int /*<<< orphan*/  ENTRIES_ATTR_NAME ; 
 int /*<<< orphan*/  ENTRIES_ATTR_PREJFILE ; 
 int /*<<< orphan*/  ENTRIES_ATTR_REPOS ; 
 int /*<<< orphan*/  ENTRIES_ATTR_REVISION ; 
 int /*<<< orphan*/  ENTRIES_ATTR_SCHEDULE ; 
 int /*<<< orphan*/  ENTRIES_ATTR_TEXT_TIME ; 
 int /*<<< orphan*/  ENTRIES_ATTR_URL ; 
 int /*<<< orphan*/  ENTRIES_ATTR_UUID ; 
 int /*<<< orphan*/  ENTRIES_ATTR_WORKING_SIZE ; 
 char* ENTRIES_VALUE_ADD ; 
 char* ENTRIES_VALUE_DELETE ; 
 char* ENTRIES_VALUE_DIR ; 
 char* ENTRIES_VALUE_FILE ; 
 char* ENTRIES_VALUE_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ENTRY_ATTRIBUTE_INVALID ; 
 int /*<<< orphan*/  SVN_ERR_NODE_UNKNOWN_KIND ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 void* SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC1 (char const*) ; 
 char const* SVN_WC_ENTRY_THIS_DIR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 char const* FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  svn_node_none ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (void*,void*) ; 
 void* FUNC14 (void*,int /*<<< orphan*/ *) ; 
 void* svn_wc_schedule_add ; 
 void* svn_wc_schedule_delete ; 
 void* svn_wc_schedule_normal ; 
 void* svn_wc_schedule_replace ; 

__attribute__((used)) static svn_error_t *
FUNC15(svn_wc_entry_t **new_entry,
              apr_hash_t *atts,
              apr_pool_t *pool)
{
  svn_wc_entry_t *entry = FUNC3(pool);
  const char *name;

  /* Find the name and set up the entry under that name. */
  name = FUNC11(atts, ENTRIES_ATTR_NAME);
  entry->name = name ? FUNC4(pool, name) : SVN_WC_ENTRY_THIS_DIR;

  /* Attempt to set revision (resolve_to_defaults may do it later, too)

     ### not used by loggy; no need to set MODIFY_FLAGS  */
  {
    const char *revision_str
      = FUNC11(atts, ENTRIES_ATTR_REVISION);

    if (revision_str)
      entry->revision = FUNC1(revision_str);
    else
      entry->revision = SVN_INVALID_REVNUM;
  }

  /* Attempt to set up url path (again, see resolve_to_defaults).

     ### not used by loggy; no need to set MODIFY_FLAGS  */
  entry->url = FUNC7(atts, ENTRIES_ATTR_URL, pool);
  if (entry->url)
    entry->url = FUNC14(entry->url, pool);

  /* Set up repository root.  Make sure it is a prefix of url.

     ### not used by loggy; no need to set MODIFY_FLAGS  */
  entry->repos = FUNC7(atts, ENTRIES_ATTR_REPOS, pool);
  if (entry->repos)
    entry->repos = FUNC14(entry->repos, pool);

  if (entry->url && entry->repos
      && !FUNC13(entry->repos, entry->url))
    return FUNC10(SVN_ERR_WC_CORRUPT, NULL,
                             FUNC2("Entry for '%s' has invalid repository "
                               "root"),
                             name ? name : SVN_WC_ENTRY_THIS_DIR);

  /* Set up kind. */
  /* ### not used by loggy; no need to set MODIFY_FLAGS  */
  {
    const char *kindstr
      = FUNC11(atts, ENTRIES_ATTR_KIND);

    entry->kind = svn_node_none;
    if (kindstr)
      {
        if (FUNC9(kindstr, ENTRIES_VALUE_FILE) == 0)
          entry->kind = svn_node_file;
        else if (FUNC9(kindstr, ENTRIES_VALUE_DIR) == 0)
          entry->kind = svn_node_dir;
        else
          return FUNC10
            (SVN_ERR_NODE_UNKNOWN_KIND, NULL,
             FUNC2("Entry '%s' has invalid node kind"),
             (name ? name : SVN_WC_ENTRY_THIS_DIR));
      }
  }

  /* Look for a schedule attribute on this entry. */
  /* ### not used by loggy; no need to set MODIFY_FLAGS  */
  {
    const char *schedulestr
      = FUNC11(atts, ENTRIES_ATTR_SCHEDULE);

    entry->schedule = svn_wc_schedule_normal;
    if (schedulestr)
      {
        if (FUNC9(schedulestr, ENTRIES_VALUE_ADD) == 0)
          entry->schedule = svn_wc_schedule_add;
        else if (FUNC9(schedulestr, ENTRIES_VALUE_DELETE) == 0)
          entry->schedule = svn_wc_schedule_delete;
        else if (FUNC9(schedulestr, ENTRIES_VALUE_REPLACE) == 0)
          entry->schedule = svn_wc_schedule_replace;
        else if (FUNC9(schedulestr, "") == 0)
          entry->schedule = svn_wc_schedule_normal;
        else
          return FUNC10(
                   SVN_ERR_ENTRY_ATTRIBUTE_INVALID, NULL,
                   FUNC2("Entry '%s' has invalid 'schedule' value"),
                   (name ? name : SVN_WC_ENTRY_THIS_DIR));
      }
  }

  /* Is this entry in a state of mental torment (conflict)? */
  entry->prejfile = FUNC8(atts,
                                             ENTRIES_ATTR_PREJFILE,
                                             pool);
  entry->conflict_old = FUNC8(atts,
                                                 ENTRIES_ATTR_CONFLICT_OLD,
                                                 pool);
  entry->conflict_new = FUNC8(atts,
                                                 ENTRIES_ATTR_CONFLICT_NEW,
                                                 pool);
  entry->conflict_wrk = FUNC8(atts,
                                                 ENTRIES_ATTR_CONFLICT_WRK,
                                                 pool);

  /* Is this entry copied? */
  /* ### not used by loggy; no need to set MODIFY_FLAGS  */
  FUNC0(FUNC6(&entry->copied, atts, ENTRIES_ATTR_COPIED, name));

  /* ### not used by loggy; no need to set MODIFY_FLAGS  */
  entry->copyfrom_url = FUNC7(atts, ENTRIES_ATTR_COPYFROM_URL, pool);

  /* ### not used by loggy; no need to set MODIFY_FLAGS  */
  {
    const char *revstr;

    revstr = FUNC11(atts, ENTRIES_ATTR_COPYFROM_REV);
    if (revstr)
      entry->copyfrom_rev = FUNC1(revstr);
  }

  /* Is this entry deleted?

     ### not used by loggy; no need to set MODIFY_FLAGS  */
  FUNC0(FUNC6(&entry->deleted, atts, ENTRIES_ATTR_DELETED, name));

  /* Is this entry absent?

     ### not used by loggy; no need to set MODIFY_FLAGS  */
  FUNC0(FUNC6(&entry->absent, atts, ENTRIES_ATTR_ABSENT, name));

  /* Is this entry incomplete?

     ### not used by loggy; no need to set MODIFY_FLAGS  */
  FUNC0(FUNC6(&entry->incomplete, atts, ENTRIES_ATTR_INCOMPLETE,
                       name));

  /* Attempt to set up timestamps. */
  /* ### not used by loggy; no need to set MODIFY_FLAGS  */
  {
    const char *text_timestr;

    text_timestr = FUNC11(atts, ENTRIES_ATTR_TEXT_TIME);
    if (text_timestr)
      FUNC0(FUNC12(&entry->text_time, text_timestr, pool));

    /* Note: we do not persist prop_time, so there is no need to attempt
       to parse a new prop_time value from the log. Certainly, on any
       recent working copy, there will not be a log record to alter
       the prop_time value. */
  }

  /* Checksum. */
  /* ### not used by loggy; no need to set MODIFY_FLAGS  */
  entry->checksum = FUNC7(atts, ENTRIES_ATTR_CHECKSUM, pool);

  /* UUID.

     ### not used by loggy; no need to set MODIFY_FLAGS  */
  entry->uuid = FUNC7(atts, ENTRIES_ATTR_UUID, pool);

  /* Setup last-committed values. */
  {
    const char *cmt_datestr, *cmt_revstr;

    cmt_datestr = FUNC11(atts, ENTRIES_ATTR_CMT_DATE);
    if (cmt_datestr)
      {
        FUNC0(FUNC12(&entry->cmt_date, cmt_datestr, pool));
      }
    else
      entry->cmt_date = 0;

    cmt_revstr = FUNC11(atts, ENTRIES_ATTR_CMT_REV);
    if (cmt_revstr)
      {
        entry->cmt_rev = FUNC1(cmt_revstr);
      }
    else
      entry->cmt_rev = SVN_INVALID_REVNUM;

    entry->cmt_author = FUNC7(atts, ENTRIES_ATTR_CMT_AUTHOR, pool);
  }

  /* ### not used by loggy; no need to set MODIFY_FLAGS  */
  entry->lock_token = FUNC7(atts, ENTRIES_ATTR_LOCK_TOKEN, pool);
  entry->lock_owner = FUNC7(atts, ENTRIES_ATTR_LOCK_OWNER, pool);
  entry->lock_comment = FUNC7(atts, ENTRIES_ATTR_LOCK_COMMENT, pool);
  {
    const char *cdate_str =
      FUNC11(atts, ENTRIES_ATTR_LOCK_CREATION_DATE);
    if (cdate_str)
      {
        FUNC0(FUNC12(&entry->lock_creation_date,
                                      cdate_str, pool));
      }
  }
  /* ----- end of lock handling.  */

  /* Note: if there are attributes for the (deprecated) has_props,
     has_prop_mods, cachable_props, or present_props, then we're just
     going to ignore them. */

  /* Translated size */
  /* ### not used by loggy; no need to set MODIFY_FLAGS  */
  {
    const char *val = FUNC11(atts, ENTRIES_ATTR_WORKING_SIZE);
    if (val)
      {
        /* Cast to off_t; it's safe: we put in an off_t to start with... */
        entry->working_size = (apr_off_t)FUNC5(val, NULL, 0);
      }
  }

  *new_entry = entry;
  return SVN_NO_ERROR;
}