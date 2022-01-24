#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {char const* data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_estate_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_21__ {TYPE_5__* cur_dir; TYPE_1__* editor; TYPE_4__* cur_file; int /*<<< orphan*/  send_all_mode; int /*<<< orphan*/  add_props_included; int /*<<< orphan*/  editor_baton; void* done; } ;
typedef  TYPE_3__ report_context_t ;
struct TYPE_22__ {int /*<<< orphan*/  file_baton; int /*<<< orphan*/ * txdelta_stream; void* fetch_file; int /*<<< orphan*/  pool; int /*<<< orphan*/  final_sha1_checksum; int /*<<< orphan*/  base_md5_checksum; int /*<<< orphan*/  final_md5_checksum; int /*<<< orphan*/  fetch_props; void* url; void* remove_props; int /*<<< orphan*/  base_rev; } ;
typedef  TYPE_4__ file_baton_t ;
struct TYPE_23__ {int /*<<< orphan*/  dir_baton; int /*<<< orphan*/  relpath; int /*<<< orphan*/  fetch_props; void* url; struct TYPE_23__* parent_dir; int /*<<< orphan*/  pool; void* remove_props; int /*<<< orphan*/  base_rev; } ;
typedef  TYPE_5__ dir_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_19__ {int /*<<< orphan*/  (* change_dir_prop ) (int /*<<< orphan*/ ,char const*,TYPE_2__ const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* change_file_prop ) (int /*<<< orphan*/ ,char const*,TYPE_2__ const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* absent_file ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* absent_directory ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* delete_entry ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_target_revision ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
#define  ABSENT_DIR 145 
#define  ABSENT_FILE 144 
#define  ADD_DIR 143 
#define  ADD_FILE 142 
#define  CHECKED_IN_HREF 141 
#define  CREATIONDATE 140 
#define  CREATOR_DISPLAYNAME 139 
#define  DELETE_ENTRY 138 
#define  FETCH_FILE 137 
#define  MD5_CHECKSUM 136 
#define  OPEN_DIR 135 
#define  OPEN_FILE 134 
#define  REMOVE_PROP 133 
#define  SET_PROP 132 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_MALFORMED_DATA ; 
 int /*<<< orphan*/  SVN_ERR_XML_UNKNOWN_ENCODING ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* SVN_PROP_ENTRY_COMMITTED_DATE ; 
 char* SVN_PROP_ENTRY_COMMITTED_REV ; 
 char* SVN_PROP_ENTRY_LAST_AUTHOR ; 
#define  TARGET_REVISION 131 
 void* TRUE ; 
#define  TXDELTA 130 
#define  UPDATE_REPORT 129 
#define  VERSION_NAME 128 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char const*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char const*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC21 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC26 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC27 (void*,void*,char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC30(svn_ra_serf__xml_estate_t *xes,
              void *baton,
              int leaving_state,
              const svn_string_t *cdata,
              apr_hash_t *attrs,
              apr_pool_t *scratch_pool)
{
  report_context_t *ctx = baton;

  switch (leaving_state)
    {
      case UPDATE_REPORT:
        ctx->done = TRUE;
        break;
      case TARGET_REVISION:
        {
          const char *revstr = FUNC26(attrs, "rev");
          apr_int64_t rev;

          FUNC0(FUNC23(&rev, revstr));

          FUNC0(ctx->editor->set_target_revision(ctx->editor_baton,
                                                   (svn_revnum_t)rev,
                                                   scratch_pool));
        }
        break;

      case CHECKED_IN_HREF:
        if (ctx->cur_file)
          ctx->cur_file->url = FUNC5(ctx->cur_file->pool, cdata->data);
        else
          ctx->cur_dir->url = FUNC5(ctx->cur_dir->pool, cdata->data);
        break;

      case SET_PROP:
      case REMOVE_PROP:
        {
          const char *name = FUNC26(attrs, "name");
          const char *encoding;
          const svn_string_t *value;

          if (leaving_state == REMOVE_PROP)
            value = NULL;
          else if ((encoding = FUNC26(attrs, "encoding")))
            {
              if (FUNC12(encoding, "base64") != 0)
                return FUNC25(SVN_ERR_XML_UNKNOWN_ENCODING, NULL,
                                         FUNC3("Got unrecognized encoding '%s'"),
                                         encoding);

              value = FUNC21(cdata, scratch_pool);
            }
          else
            value = cdata;

          if (ctx->cur_file)
            {
              file_baton_t *file = ctx->cur_file;

              if (value
                  || ctx->add_props_included
                  || FUNC2(file->base_rev))
                {
                  FUNC0(FUNC8(file, scratch_pool));

                  FUNC0(ctx->editor->change_file_prop(file->file_baton,
                                                        name,
                                                        value,
                                                        scratch_pool));
                }
              else
                {
                  if (!file->remove_props)
                    file->remove_props = FUNC4(file->pool);

                  FUNC27(file->remove_props,
                                FUNC5(file->pool, name),
                                "");
                }
            }
          else
            {
              dir_baton_t *dir = ctx->cur_dir;

              if (value
                  || ctx->add_props_included
                  || FUNC2(dir->base_rev))
                {
                  FUNC0(FUNC7(dir, scratch_pool));

                  FUNC0(ctx->editor->change_dir_prop(dir->dir_baton,
                                                       name,
                                                       value,
                                                       scratch_pool));
                }
              else
                {
                  if (!dir->remove_props)
                    dir->remove_props = FUNC4(dir->pool);

                  FUNC27(dir->remove_props,
                                FUNC5(dir->pool, name),
                                "");
                }
            }
        }
        break;

      case OPEN_DIR:
      case ADD_DIR:
        {
          dir_baton_t *dir = ctx->cur_dir;
          ctx->cur_dir = ctx->cur_dir->parent_dir;

          if (dir->fetch_props && ! dir->url)
            {
              return FUNC24(SVN_ERR_RA_DAV_MALFORMED_DATA, NULL,
                                      FUNC3("The REPORT response did not "
                                        "include the requested checked-in "
                                        "value"));
            }

          if (!dir->fetch_props)
            {
              FUNC0(FUNC11(dir));
              break; /* dir potentially no longer valid */
            }
          else
            {
              /* Otherwise, if the server is *not* in "send-all" mode, we
                 are at a point where we can queue up the PROPFIND request */
              FUNC0(FUNC9(dir, scratch_pool));
            }
        }
        break;

      case OPEN_FILE:
      case ADD_FILE:
        {
          file_baton_t *file = ctx->cur_file;

          ctx->cur_file = NULL;
          /* go fetch info->name from DAV:checked-in */

          if ((file->fetch_file || file->fetch_props) && ! file->url)
            {
              return FUNC24(SVN_ERR_RA_DAV_MALFORMED_DATA, NULL,
                                      FUNC3("The REPORT response did not "
                                        "include the requested checked-in "
                                        "value"));
            }

          /* If the server is in "send-all" mode or didn't get further work,
             we can now close the file */
          if (! file->fetch_file && ! file->fetch_props)
            {
              FUNC0(FUNC6(file, scratch_pool));
              break; /* file is no longer valid */
            }
          else
            {
              /* Otherwise, if the server is *not* in "send-all" mode, we
                 should be at a point where we can queue up any auxiliary
                 content-fetching requests. */
              FUNC0(FUNC10(file, scratch_pool));
            }
        }
        break;

      case MD5_CHECKSUM:
        FUNC0(FUNC22(&ctx->cur_file->final_md5_checksum,
                                       svn_checksum_md5,
                                       cdata->data,
                                       ctx->cur_file->pool));
        break;

      case FETCH_FILE:
        {
          file_baton_t *file = ctx->cur_file;
          const char *base_checksum = FUNC26(attrs, "base-checksum");
          const char *sha1_checksum = FUNC26(attrs, "sha1-checksum");

          if (base_checksum)
            FUNC0(FUNC22(&file->base_md5_checksum,
                                           svn_checksum_md5, base_checksum,
                                           file->pool));

          /* Property is duplicated between add-file and fetch-file */
          if (sha1_checksum && !file->final_sha1_checksum)
            FUNC0(FUNC22(&file->final_sha1_checksum,
                                           svn_checksum_sha1,
                                           sha1_checksum,
                                           file->pool));

          /* Some 0.3x mod_dav_svn wrote both txdelta and fetch-file
             elements in send-all mode. (See neon for history) */
          if (! ctx->send_all_mode)
            file->fetch_file = TRUE;
        }
        break;

      case DELETE_ENTRY:
        {
          const char *name = FUNC26(attrs, "name");
          const char *revstr;
          apr_int64_t delete_rev;

          FUNC0(FUNC7(ctx->cur_dir, scratch_pool));

          revstr = FUNC26(attrs, "rev");

          if (revstr)
            FUNC0(FUNC23(&delete_rev, revstr));
          else
            delete_rev = SVN_INVALID_REVNUM;

          FUNC0(ctx->editor->delete_entry(
                                    FUNC28(ctx->cur_dir->relpath,
                                                     name,
                                                     scratch_pool),
                                    (svn_revnum_t)delete_rev,
                                    ctx->cur_dir->dir_baton,
                                    scratch_pool));
        }
        break;

      case ABSENT_DIR:
        {
          const char *name = FUNC26(attrs, "name");

          FUNC0(FUNC7(ctx->cur_dir, scratch_pool));

          FUNC0(ctx->editor->absent_directory(
                                    FUNC28(ctx->cur_dir->relpath,
                                                     name, scratch_pool),
                                    ctx->cur_dir->dir_baton,
                                    scratch_pool));
        }
        break;
     case ABSENT_FILE:
        {
          const char *name = FUNC26(attrs, "name");

          FUNC0(FUNC7(ctx->cur_dir, scratch_pool));

          FUNC0(ctx->editor->absent_file(
                                    FUNC28(ctx->cur_dir->relpath,
                                                     name, scratch_pool),
                                    ctx->cur_dir->dir_baton,
                                    scratch_pool));
        }
        break;

      case TXDELTA:
        {
          file_baton_t *file = ctx->cur_file;

          if (file->txdelta_stream)
            {
              FUNC0(FUNC29(file->txdelta_stream));
              file->txdelta_stream = NULL;
            }
        }
        break;

      case VERSION_NAME:
      case CREATIONDATE:
      case CREATOR_DISPLAYNAME:
        {
          /* Subversion <= 1.6 servers would return a fetch-props element on
             open-file and open-dir when non entry props were changed in
             !send-all mode. In turn we fetch the full set of properties and
             send those as *changes* to the editor. So these editors have to
             be aware that they receive non property changes.
             (In case of incomplete directories they have to be aware anyway)

             In that case the last_* entry props are posted as 3 specific xml
             elements, which we handle here.

             In r1063337 this behavior was changed in mod_dav_svn to always
             send property changes inline in these cases. (See issue #3657)
           */

          const char *propname;

          if (ctx->cur_file)
            FUNC0(FUNC8(ctx->cur_file, scratch_pool));
          else if (ctx->cur_dir)
            FUNC0(FUNC7(ctx->cur_dir, scratch_pool));
          else
            break;

          switch (leaving_state)
            {
              case VERSION_NAME:
                propname = SVN_PROP_ENTRY_COMMITTED_REV;
                break;
              case CREATIONDATE:
                propname = SVN_PROP_ENTRY_COMMITTED_DATE;
                break;
              case CREATOR_DISPLAYNAME:
                propname = SVN_PROP_ENTRY_LAST_AUTHOR;
                break;
              default:
                FUNC1(); /* Impossible to reach */
            }

          if (ctx->cur_file)
            FUNC0(ctx->editor->change_file_prop(ctx->cur_file->file_baton,
                                                  propname, cdata,
                                                  scratch_pool));
          else
            FUNC0(ctx->editor->change_dir_prop(ctx->cur_dir->dir_baton,
                                                  propname, cdata,
                                                  scratch_pool));
        }
        break;
    }

  return SVN_NO_ERROR;
}