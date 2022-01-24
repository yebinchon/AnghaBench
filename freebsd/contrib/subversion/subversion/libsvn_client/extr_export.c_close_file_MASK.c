#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  kind; } ;
typedef  TYPE_3__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  svn_subst_eol_style_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct file_baton {struct edit_baton* edit_baton; int /*<<< orphan*/  path; scalar_t__ date; int /*<<< orphan*/  special; scalar_t__ executable_val; int /*<<< orphan*/  tmppath; int /*<<< orphan*/  author; int /*<<< orphan*/  repos_root_url; int /*<<< orphan*/  url; int /*<<< orphan*/  revision; TYPE_2__* keywords_val; TYPE_1__* eol_style_val; int /*<<< orphan*/  text_digest; int /*<<< orphan*/  tmp_stream; } ;
struct edit_baton {int /*<<< orphan*/  notify_baton; int /*<<< orphan*/  (* notify_func ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  native_eol; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_update_add ; 

__attribute__((used)) static svn_error_t *
FUNC17(void *file_baton,
           const char *text_digest,
           apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;
  svn_checksum_t *text_checksum;
  svn_checksum_t *actual_checksum;

  /* Was a txdelta even sent? */
  if (! fb->tmppath)
    return SVN_NO_ERROR;

  FUNC0(FUNC13(fb->tmp_stream));

  FUNC0(FUNC7(&text_checksum, svn_checksum_md5, text_digest,
                                 pool));
  actual_checksum = FUNC4(fb->text_digest, pool);

  /* Note that text_digest can be NULL when talking to certain repositories.
     In that case text_checksum will be NULL and the following match code
     will note that the checksums match */
  if (!FUNC5(text_checksum, actual_checksum))
    return FUNC6(text_checksum, actual_checksum, pool,
                                     FUNC1("Checksum mismatch for '%s'"),
                                     FUNC8(fb->path, pool));

  if ((! fb->eol_style_val) && (! fb->keywords_val) && (! fb->special))
    {
      FUNC0(FUNC9(fb->tmppath, fb->path, FALSE, pool));
    }
  else
    {
      svn_subst_eol_style_t style;
      const char *eol = NULL;
      svn_boolean_t repair = FALSE;
      apr_hash_t *final_kw = NULL;

      if (fb->eol_style_val)
        {
          FUNC0(FUNC2(&style, &eol, fb->eol_style_val->data,
                                eb->native_eol));
          repair = TRUE;
        }

      if (fb->keywords_val)
        FUNC0(FUNC14(&final_kw, fb->keywords_val->data,
                                          fb->revision, fb->url,
                                          fb->repos_root_url, fb->date,
                                          fb->author, pool));

      FUNC0(FUNC15(fb->tmppath, fb->path,
                                            eol, repair, final_kw,
                                            TRUE, /* expand */
                                            fb->special,
                                            eb->cancel_func, eb->cancel_baton,
                                            pool));

      FUNC0(FUNC10(fb->tmppath, FALSE, pool));
    }

  if (fb->executable_val)
    FUNC0(FUNC12(fb->path, TRUE, FALSE, pool));

  if (fb->date && (! fb->special))
    FUNC0(FUNC11(fb->date, fb->path, pool));

  if (fb->edit_baton->notify_func)
    {
      svn_wc_notify_t *notify = FUNC16(fb->path,
                                                     svn_wc_notify_update_add,
                                                     pool);
      notify->kind = svn_node_file;
      (*fb->edit_baton->notify_func)(fb->edit_baton->notify_baton, notify,
                                     pool);
    }

  return SVN_NO_ERROR;
}