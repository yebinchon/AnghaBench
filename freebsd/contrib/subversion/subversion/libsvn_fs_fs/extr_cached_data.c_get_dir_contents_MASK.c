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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_6__ {int /*<<< orphan*/  entries; int /*<<< orphan*/  txn_filesize; } ;
typedef  TYPE_1__ svn_fs_fs__dir_data_t ;
typedef  int /*<<< orphan*/  svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  id; TYPE_3__* data_rep; } ;
typedef  TYPE_2__ node_revision_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
struct TYPE_8__ {int /*<<< orphan*/  expanded_size; int /*<<< orphan*/  txn_id; } ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_READ ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_FILESIZE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_fs_fs__dir_data_t *dir,
                 svn_fs_t *fs,
                 node_revision_t *noderev,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_stream_t *contents;

  /* Initialize the result. */
  dir->txn_filesize = SVN_INVALID_FILESIZE;

  /* Read dir contents - unless there is none in which case we are done. */
  if (noderev->data_rep && FUNC4(&noderev->data_rep->txn_id))
    {
      /* Get location & current size of the directory representation. */
      const char *filename;
      apr_file_t *file;

      filename = FUNC5(fs, noderev->id,
                                                   scratch_pool);

      /* The representation is mutable.  Read the old directory
         contents from the mutable children file, followed by the
         changes we've made in this transaction. */
      FUNC0(FUNC6(&file, filename, APR_READ | APR_BUFFERED,
                               APR_OS_DEFAULT, scratch_pool));

      /* Obtain txn children file size. */
      FUNC0(FUNC7(&dir->txn_filesize, file, scratch_pool));

      contents = FUNC9(file, FALSE, scratch_pool);
      FUNC0(FUNC2(&dir->entries, contents, TRUE, noderev->id,
                               result_pool, scratch_pool));
      FUNC0(FUNC8(contents));
    }
  else if (noderev->data_rep)
    {
      /* Undeltify content before parsing it. Otherwise, we could only
       * parse it byte-by-byte.
       */
      apr_size_t len = noderev->data_rep->expanded_size;
      svn_stringbuf_t *text;

      /* The representation is immutable.  Read it normally. */
      FUNC0(FUNC3(&contents, fs, noderev->data_rep,
                                      FALSE, scratch_pool));
      FUNC0(FUNC11(&text, contents, len, scratch_pool));
      FUNC0(FUNC8(contents));

      /* de-serialize hash */
      contents = FUNC10(text, scratch_pool);
      FUNC0(FUNC2(&dir->entries, contents, FALSE, noderev->id,
                               result_pool, scratch_pool));
    }
  else
    {
       dir->entries = FUNC1(result_pool, 0, sizeof(svn_fs_dirent_t *));
    }

  return SVN_NO_ERROR;
}