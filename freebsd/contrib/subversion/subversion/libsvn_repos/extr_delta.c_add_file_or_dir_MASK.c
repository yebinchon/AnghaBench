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
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct context {TYPE_1__* editor; int /*<<< orphan*/  target_root; int /*<<< orphan*/  authz_read_baton; int /*<<< orphan*/  (* authz_read_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/ * (* close_file ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* add_file ) (char const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;int /*<<< orphan*/ * (* close_directory ) (void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* add_directory ) (char const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC3 (struct context*,void*,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct context*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct context*,void*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC8 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 

__attribute__((used)) static svn_error_t *
FUNC13(struct context *c, void *dir_baton,
                svn_depth_t depth,
                const char *target_path,
                const char *edit_path,
                svn_node_kind_t tgt_kind,
                apr_pool_t *pool)
{
  struct context *context = c;
  svn_boolean_t allowed;

  FUNC2(target_path && edit_path);

  if (c->authz_read_func)
    {
      FUNC1(c->authz_read_func(&allowed, c->target_root, target_path,
                                 c->authz_read_baton, pool));
      if (!allowed)
        return FUNC3(c, dir_baton, edit_path, tgt_kind, pool);
    }

  if (tgt_kind == svn_node_dir)
    {
      void *subdir_baton;

      FUNC1(context->editor->add_directory(edit_path, dir_baton, NULL,
                                             SVN_INVALID_REVNUM, pool,
                                             &subdir_baton));
      FUNC1(FUNC4(context, subdir_baton, FUNC0(depth),
                         NULL, target_path, edit_path, pool));
      return context->editor->close_directory(subdir_baton, pool);
    }
  else
    {
      void *file_baton;
      svn_checksum_t *checksum;

      FUNC1(context->editor->add_file(edit_path, dir_baton,
                                        NULL, SVN_INVALID_REVNUM, pool,
                                        &file_baton));
      FUNC1(FUNC5(context, file_baton, NULL, target_path, pool));
      FUNC1(FUNC12(&checksum, svn_checksum_md5,
                                   context->target_root, target_path,
                                   TRUE, pool));
      return context->editor->close_file
             (file_baton, FUNC11(checksum, pool), pool);
    }
}