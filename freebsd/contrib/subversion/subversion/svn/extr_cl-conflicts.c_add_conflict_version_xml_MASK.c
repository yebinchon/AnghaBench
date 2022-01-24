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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 char const* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ svn_node_unknown ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_xml_self_closing ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_stringbuf_t **pstr,
                         const char *side,
                         const char *repos_root_url,
                         const char *repos_relpath,
                         svn_revnum_t peg_rev,
                         svn_node_kind_t node_kind,
                         apr_pool_t *pool)
{
  apr_hash_t *att_hash = FUNC1(pool);


  FUNC4(att_hash, "side", side);

  if (repos_root_url)
    FUNC4(att_hash, "repos-url", repos_root_url);

  if (repos_relpath)
    FUNC4(att_hash, "path-in-repos", repos_relpath);

  if (FUNC0(peg_rev))
    FUNC4(att_hash, "revision", FUNC2(pool, peg_rev));

  if (node_kind != svn_node_unknown)
    FUNC4(att_hash, "kind", FUNC3(node_kind));

  FUNC5(pstr, pool, svn_xml_self_closing,
                             "version", att_hash);
  return SVN_NO_ERROR;
}