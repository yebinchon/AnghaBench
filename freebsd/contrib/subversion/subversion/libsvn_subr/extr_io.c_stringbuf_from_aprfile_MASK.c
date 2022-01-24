#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t len; scalar_t__* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_15__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_16__ {scalar_t__ size; scalar_t__ fname; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ apr_finfo_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FINFO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* SVN_NO_ERROR ; 
 scalar_t__ SVN__STREAM_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__,size_t*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,scalar_t__) ; 
 TYPE_1__* FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_stringbuf_t **result,
                       const char *filename,
                       apr_file_t *file,
                       svn_boolean_t check_size,
                       apr_pool_t *pool)
{
  apr_size_t len;
  svn_error_t *err;
  svn_stringbuf_t *res = NULL;
  apr_size_t res_initial_len = SVN__STREAM_CHUNK_SIZE;
  char *buf;

  /* If our caller wants us to check the size of the file for
     efficient memory handling, we'll try to do so. */
  if (check_size)
    {
      apr_finfo_t finfo = { 0 };

      /* In some cases we get size 0 and no error for non files,
          so we also check for the name. (= cached in apr_file_t) */
      if (! FUNC2(&finfo, APR_FINFO_SIZE, file) && finfo.fname)
        {
          /* we've got the file length. Now, read it in one go. */
          svn_boolean_t eof;
          res_initial_len = (apr_size_t)finfo.size;
          res = FUNC9(res_initial_len, pool);
          FUNC1(FUNC7(file, res->data,
                                         res_initial_len, &res->len,
                                         &eof, pool));
          res->data[res->len] = 0;

          *result = res;
          return SVN_NO_ERROR;
        }
    }

  /* XXX: We should check the incoming data for being of type binary. */
  buf = FUNC3(pool, SVN__STREAM_CHUNK_SIZE);
  res = FUNC9(res_initial_len, pool);

  /* apr_file_read will not return data and eof in the same call. So this loop
   * is safe from missing read data.  */
  len = SVN__STREAM_CHUNK_SIZE;
  err = FUNC6(file, buf, &len, pool);
  while (! err)
    {
      FUNC8(res, buf, len);
      len = SVN__STREAM_CHUNK_SIZE;
      err = FUNC6(file, buf, &len, pool);
    }

  /* Having read all the data we *expect* EOF */
  if (err && !FUNC0(err->apr_err))
    return FUNC5(err);
  FUNC4(err);

  *result = res;
  return SVN_NO_ERROR;
}