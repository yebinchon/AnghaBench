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
typedef  int /*<<< orphan*/  svn_txdelta_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  scalar_t__ svn_boolean_t ;
struct context {int /*<<< orphan*/ * source_root; int /*<<< orphan*/  target_root; scalar_t__ text_deltas; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  change_file_prop ; 
 int /*<<< orphan*/  FUNC2 (struct context*,char const*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct context*,void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(struct context *c,
            void *file_baton,
            const char *source_path,
            const char *target_path,
            apr_pool_t *pool)
{
  apr_pool_t *subpool;
  svn_boolean_t changed = TRUE;

  FUNC1(target_path);

  /* Make a subpool for local allocations. */
  subpool = FUNC8(pool);

  /* Compare the files' property lists.  */
  FUNC0(FUNC2(c, source_path, target_path,
                          change_file_prop, file_baton, subpool));

  if (source_path)
    {
      FUNC0(FUNC5(&changed,
                                        c->target_root, target_path,
                                        c->source_root, source_path,
                                        subpool));
    }
  else
    {
      /* If there isn't a source path, this is an add, which
         necessarily has textual mods. */
    }

  /* If there is a change, and the context indicates that we should
     care about it, then hand it off to a delta stream.  */
  if (changed)
    {
      svn_txdelta_stream_t *delta_stream = NULL;
      svn_checksum_t *source_checksum;
      const char *source_hex_digest = NULL;

      if (c->text_deltas)
        {
          /* Get a delta stream turning an empty file into one having
             TARGET_PATH's contents.  */
          FUNC0(FUNC7
                  (&delta_stream,
                   source_path ? c->source_root : NULL,
                   source_path ? source_path : NULL,
                   c->target_root, target_path, subpool));
        }

      if (source_path)
        {
          FUNC0(FUNC6(&source_checksum, svn_checksum_md5,
                                       c->source_root, source_path, TRUE,
                                       subpool));

          source_hex_digest = FUNC4(source_checksum,
                                                      subpool);
        }

      FUNC0(FUNC3(c, file_baton, source_hex_digest,
                              delta_stream, subpool));
    }

  /* Cleanup. */
  FUNC9(subpool);

  return SVN_NO_ERROR;
}