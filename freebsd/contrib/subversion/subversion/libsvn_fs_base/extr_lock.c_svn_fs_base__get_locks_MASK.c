#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_lock_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  (* svn_fs_get_locks_callback_t ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  scalar_t__ svn_boolean_t ;
struct locks_get_args {int /*<<< orphan*/ * stream; int /*<<< orphan*/  depth; int /*<<< orphan*/  path; } ;
typedef  scalar_t__ apr_uint64_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SIZE_MAX ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_MALFORMED_FILE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct locks_get_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__**,char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_get_locks ; 

svn_error_t *
FUNC17(svn_fs_t *fs,
                       const char *path,
                       svn_depth_t depth,
                       svn_fs_get_locks_callback_t get_locks_func,
                       void *get_locks_baton,
                       apr_pool_t *pool)
{
  struct locks_get_args args;
  svn_stream_t *stream;
  svn_stringbuf_t *buf;
  svn_boolean_t eof;
  apr_pool_t *iterpool = FUNC9(pool);

  FUNC0(FUNC5(fs, TRUE));

  args.path = FUNC4(path, pool);
  args.depth = depth;
  /* Enough for 100+ locks if the comments are small. */
  args.stream = FUNC13(FUNC12(4 * 1024  /* blocksize */,
                                                               64 * 1024 /* maxsize */,
                                                               pool),
                                          pool);
  FUNC0(FUNC7(fs, txn_body_get_locks, &args, FALSE, pool));

  /* Read the stream calling GET_LOCKS_FUNC(). */
  stream = args.stream;

  while (1)
    {
      apr_size_t len, skel_len;
      char c, *skel_buf;
      svn_skel_t *lock_skel;
      svn_lock_t *lock;
      apr_uint64_t ui64;
      svn_error_t *err;

      FUNC8(iterpool);

      /* Read a skel length line and parse it for the skel's length.  */
      FUNC0(FUNC16(stream, &buf, "\n", &eof, iterpool));
      if (eof)
        break;
      err = FUNC2(&ui64, buf->data, 0, APR_SIZE_MAX, 10);
      if (err)
        return FUNC3(SVN_ERR_MALFORMED_FILE, err, NULL);
      skel_len = (apr_size_t)ui64;

      /* Now read that much into a buffer. */
      skel_buf = FUNC1(pool, skel_len + 1);
      FUNC0(FUNC15(stream, skel_buf, &skel_len));
      skel_buf[skel_len] = '\0';

      /* Read the extra newline that follows the skel. */
      len = 1;
      FUNC0(FUNC15(stream, &c, &len));
      if (c != '\n')
        return FUNC3(SVN_ERR_MALFORMED_FILE, NULL, NULL);

      /* Parse the skel into a lock, and notify the caller. */
      lock_skel = FUNC11(skel_buf, skel_len, iterpool);
      FUNC0(FUNC6(&lock, lock_skel, iterpool));
      FUNC0(get_locks_func(get_locks_baton, lock, iterpool));
    }

  FUNC0(FUNC14(stream));
  FUNC10(iterpool);
  return SVN_NO_ERROR;
}