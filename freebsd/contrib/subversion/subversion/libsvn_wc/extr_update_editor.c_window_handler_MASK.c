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
typedef  int /*<<< orphan*/  svn_txdelta_window_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct handler_baton {int /*<<< orphan*/  pool; scalar_t__ install_data; int /*<<< orphan*/  new_text_base_sha1_checksum; int /*<<< orphan*/  new_text_base_md5_digest; TYPE_1__* actual_source_checksum; TYPE_1__* expected_source_checksum; int /*<<< orphan*/  source_checksum_stream; int /*<<< orphan*/  apply_baton; int /*<<< orphan*/ * (* apply_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;struct file_baton* fb; } ;
struct file_baton {int /*<<< orphan*/  new_text_base_md5_checksum; int /*<<< orphan*/  new_text_base_sha1_checksum; int /*<<< orphan*/  pool; int /*<<< orphan*/  local_abspath; } ;
struct TYPE_4__ {scalar_t__ kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT_TEXT_BASE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC16(svn_txdelta_window_t *window, void *baton)
{
  struct handler_baton *hb = baton;
  struct file_baton *fb = hb->fb;
  svn_error_t *err;

  /* Apply this window.  We may be done at that point.  */
  err = hb->apply_handler(window, hb->apply_baton);
  if (window != NULL && !err)
    return SVN_NO_ERROR;

  if (hb->expected_source_checksum)
    {
      /* Close the stream to calculate HB->actual_source_md5_checksum. */
      svn_error_t *err2 = FUNC13(hb->source_checksum_stream);

      if (!err2)
        {
          FUNC1(hb->expected_source_checksum->kind ==
                        hb->actual_source_checksum->kind);

          if (!FUNC6(hb->expected_source_checksum,
                                  hb->actual_source_checksum))
            {
              err = FUNC11(SVN_ERR_WC_CORRUPT_TEXT_BASE, err,
                        FUNC2("Checksum mismatch while updating '%s':\n"
                          "   expected:  %s\n"
                          "     actual:  %s\n"),
                        FUNC8(fb->local_abspath, hb->pool),
                        FUNC7(hb->expected_source_checksum,
                                                hb->pool),
                        FUNC7(hb->actual_source_checksum,
                                                hb->pool));
            }
        }

      err = FUNC10(err, err2);
    }

  if (err)
    {
      /* We failed to apply the delta; clean up the temporary file if it
         already created by lazy_open_target(). */
      if (hb->install_data)
        {
          FUNC9(FUNC15(hb->install_data,
                                                            hb->pool));
        }
    }
  else
    {
      /* Tell the file baton about the new text base's checksums. */
      fb->new_text_base_md5_checksum =
        FUNC4(hb->new_text_base_md5_digest, fb->pool);
      fb->new_text_base_sha1_checksum =
        FUNC5(hb->new_text_base_sha1_checksum, fb->pool);

      /* Store the new pristine text in the pristine store now.  Later, in a
         single transaction we will update the BASE_NODE to include a
         reference to this pristine text's checksum. */
      FUNC0(FUNC14(hb->install_data,
                                          fb->new_text_base_sha1_checksum,
                                          fb->new_text_base_md5_checksum,
                                          hb->pool));
    }

  FUNC12(hb->pool);

  return err;
}