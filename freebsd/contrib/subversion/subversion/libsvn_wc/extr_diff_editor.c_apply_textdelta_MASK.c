#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct file_baton_t {int /*<<< orphan*/  pool; int /*<<< orphan*/  local_abspath; int /*<<< orphan*/  result_digest; int /*<<< orphan*/  temp_file_path; scalar_t__ base_checksum; scalar_t__ skip; struct edit_baton_t* eb; } ;
struct edit_baton_t {int /*<<< orphan*/  db; int /*<<< orphan*/  anchor_abspath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_delta_noop_window_handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(void *file_baton,
                const char *base_checksum_hex,
                apr_pool_t *pool,
                svn_txdelta_window_handler_t *handler,
                void **handler_baton)
{
  struct file_baton_t *fb = file_baton;
  struct edit_baton_t *eb = fb->eb;
  svn_stream_t *source;
  svn_stream_t *temp_stream;
  svn_checksum_t *repos_checksum = NULL;

  if (fb->skip)
    {
      *handler = svn_delta_noop_window_handler;
      *handler_baton = NULL;
      return SVN_NO_ERROR;
    }

  if (base_checksum_hex && fb->base_checksum)
    {
      const svn_checksum_t *base_md5;
      FUNC0(FUNC4(&repos_checksum, svn_checksum_md5,
                                     base_checksum_hex, pool));

      FUNC0(FUNC9(&base_md5,
                                          eb->db, eb->anchor_abspath,
                                          fb->base_checksum,
                                          pool, pool));

      if (! FUNC2(repos_checksum, base_md5))
        {
          /* ### I expect that there are some bad drivers out there
             ### that used to give bad results. We could look in
             ### working to see if the expected checksum matches and
             ### then return the pristine of that... But that only moves
             ### the problem */

          /* If needed: compare checksum obtained via md5 of working.
             And if they match set fb->base_checksum and fb->base_props */

          return FUNC3(
                        base_md5,
                        repos_checksum,
                        pool,
                        FUNC1("Checksum mismatch for '%s'"),
                        FUNC5(fb->local_abspath,
                                               pool));
        }

      FUNC0(FUNC10(&source, NULL,
                                       eb->db, fb->local_abspath,
                                       fb->base_checksum,
                                       pool, pool));
    }
  else if (fb->base_checksum)
    {
      FUNC0(FUNC10(&source, NULL,
                                       eb->db, fb->local_abspath,
                                       fb->base_checksum,
                                       pool, pool));
    }
  else
    source = FUNC6(pool);

  /* This is the file that will contain the pristine repository version. */
  FUNC0(FUNC7(&temp_stream, &fb->temp_file_path, NULL,
                                 svn_io_file_del_on_pool_cleanup,
                                 fb->pool, fb->pool));

  FUNC8(source, temp_stream,
                    fb->result_digest,
                    fb->local_abspath /* error_info */,
                    fb->pool,
                    handler, handler_baton);

  return SVN_NO_ERROR;
}