#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct context {TYPE_1__* editor; int /*<<< orphan*/  target_root; int /*<<< orphan*/  source_root; int /*<<< orphan*/  authz_read_baton; int /*<<< orphan*/  (* authz_read_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/ * (* close_file ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* open_file ) (char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;int /*<<< orphan*/ * (* close_directory ) (void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* open_directory ) (char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC3 (struct context*,void*,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct context*,void*,int /*<<< orphan*/ ,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct context*,void*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC9 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC11 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 

__attribute__((used)) static svn_error_t *
FUNC14(struct context *c,
                    void *dir_baton,
                    svn_depth_t depth,
                    const char *source_path,
                    const char *target_path,
                    const char *edit_path,
                    svn_node_kind_t tgt_kind,
                    apr_pool_t *pool)
{
  svn_revnum_t base_revision = SVN_INVALID_REVNUM;
  svn_boolean_t allowed;

  FUNC2(target_path && source_path && edit_path);

  if (c->authz_read_func)
    {
      FUNC1(c->authz_read_func(&allowed, c->target_root, target_path,
                                 c->authz_read_baton, pool));
      if (!allowed)
        return FUNC3(c, dir_baton, edit_path, tgt_kind, pool);
    }

  /* Get the base revision for the entry from the hash. */
  base_revision = FUNC6(c->source_root, source_path, pool);

  if (tgt_kind == svn_node_dir)
    {
      void *subdir_baton;

      FUNC1(c->editor->open_directory(edit_path, dir_baton,
                                        base_revision, pool,
                                        &subdir_baton));
      FUNC1(FUNC4(c, subdir_baton, FUNC0(depth),
                         source_path, target_path, edit_path, pool));
      return c->editor->close_directory(subdir_baton, pool);
    }
  else
    {
      void *file_baton;
      svn_checksum_t *checksum;

      FUNC1(c->editor->open_file(edit_path, dir_baton, base_revision,
                                   pool, &file_baton));
      FUNC1(FUNC5(c, file_baton, source_path, target_path, pool));
      FUNC1(FUNC13(&checksum, svn_checksum_md5,
                                   c->target_root, target_path, TRUE,
                                   pool));
      return c->editor->close_file
             (file_baton, FUNC12(checksum, pool), pool);
    }
}