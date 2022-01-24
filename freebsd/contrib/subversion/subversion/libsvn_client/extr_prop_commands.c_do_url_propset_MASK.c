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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/ * (* close_directory ) (void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* change_dir_prop ) (void*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* close_file ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* change_file_prop ) (void*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* open_file ) (char const*,void*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,void**) ;int /*<<< orphan*/  (* open_root ) (void*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,void**) ;} ;
typedef  TYPE_1__ svn_delta_editor_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,void*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ const svn_node_file ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
svn_error_t *
FUNC8(const char *url,
               const char *propname,
               const svn_string_t *propval,
               const svn_node_kind_t kind,
               const svn_revnum_t base_revision_for_url,
               const svn_delta_editor_t *editor,
               void *edit_baton,
               apr_pool_t *pool)
{
  void *root_baton;

  FUNC0(editor->open_root(edit_baton, base_revision_for_url, pool,
                            &root_baton));

  if (kind == svn_node_file)
    {
      void *file_baton;
      const char *uri_basename = FUNC7(url, pool);

      FUNC0(editor->open_file(uri_basename, root_baton,
                                base_revision_for_url, pool, &file_baton));
      FUNC0(editor->change_file_prop(file_baton, propname, propval, pool));
      FUNC0(editor->close_file(file_baton, NULL, pool));
    }
  else
    {
      FUNC0(editor->change_dir_prop(root_baton, propname, propval, pool));
    }

  return editor->close_directory(root_baton, pool);
}