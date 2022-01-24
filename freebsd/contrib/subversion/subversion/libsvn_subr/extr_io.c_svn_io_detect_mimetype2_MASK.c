#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_7__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  block ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_FILENAME ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,unsigned char*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (unsigned char*,int) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC14(const char **mimetype,
                        const char *file,
                        apr_hash_t *mimetype_map,
                        apr_pool_t *pool)
{
  static const char * const generic_binary = "application/octet-stream";

  svn_node_kind_t kind;
  apr_file_t *fh;
  svn_error_t *err;
  unsigned char block[1024];
  apr_size_t amt_read = sizeof(block);

  /* Default return value is NULL. */
  *mimetype = NULL;

  /* If there is a mimetype_map provided, we'll first try to look up
     our file's extension in the map.  Failing that, we'll run the
     heuristic. */
  if (mimetype_map)
    {
      const char *type_from_map;
      char *path_ext; /* Can point to physical const memory but only when
                         svn_path_splitext sets it to "". */
      FUNC13(NULL, (const char **)&path_ext, file, pool);
      FUNC3(path_ext);
      if ((type_from_map = FUNC7(mimetype_map, path_ext)))
        {
          *mimetype = type_from_map;
          return SVN_NO_ERROR;
        }
    }

  /* See if this file even exists, and make sure it really is a file. */
  FUNC1(FUNC8(file, &kind, pool));
  if (kind != svn_node_file)
    return FUNC6(SVN_ERR_BAD_FILENAME, NULL,
                             FUNC2("Can't detect MIME type of non-file '%s'"),
                             FUNC4(file, pool));

  FUNC1(FUNC10(&fh, file, APR_READ, 0, pool));

  /* Read a block of data from FILE. */
  err = FUNC11(fh, block, &amt_read, pool);
  if (err && ! FUNC0(err->apr_err))
    return err;
  FUNC5(err);

  /* Now close the file.  No use keeping it open any more.  */
  FUNC1(FUNC9(fh, pool));

  if (FUNC12(block, amt_read))
    *mimetype = generic_binary;

  return SVN_NO_ERROR;
}