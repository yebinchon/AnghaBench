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
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  map_conflict_action_xml ; 
 int /*<<< orphan*/  map_conflict_reason_xml ; 
 char const* FUNC3 (int /*<<< orphan*/ ) ; 
 char const* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char const* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_xml_normal ; 

__attribute__((used)) static svn_error_t *
FUNC17(svn_stringbuf_t *str,
                              svn_client_conflict_t *conflict,
                              apr_pool_t *pool)
{
  apr_hash_t *att_hash = FUNC2(pool);
  const char *tmp;
  const char *repos_root_url;
  const char *repos_relpath;
  svn_revnum_t peg_rev;
  svn_node_kind_t node_kind;

  FUNC13(att_hash, "victim",
                FUNC12(
                  FUNC7(conflict), pool));

  FUNC13(att_hash, "kind",
                FUNC3(
                  FUNC11(conflict)));

  FUNC13(att_hash, "operation",
                FUNC4(
                  FUNC9(conflict), pool));

  tmp = FUNC14(map_conflict_action_xml,
                           FUNC5(conflict));
  FUNC13(att_hash, "action", tmp);

  tmp = FUNC14(map_conflict_reason_xml,
                           FUNC8(conflict));
  FUNC13(att_hash, "reason", tmp);

  /* Open the tree-conflict tag. */
  FUNC16(&str, pool, svn_xml_normal,
                             "tree-conflict", att_hash);

  /* Add child tags for OLDER_VERSION and THEIR_VERSION. */

  FUNC0(FUNC10(&repos_root_url, NULL, conflict,
                                             pool, pool));
  FUNC0(FUNC6(&repos_relpath,
                                                              &peg_rev,
                                                              &node_kind,
                                                              conflict,
                                                              pool,
                                                              pool));
  if (repos_root_url && repos_relpath)
    FUNC0(FUNC1(&str, "source-left",
                                     repos_root_url, repos_relpath, peg_rev,
                                     node_kind, pool));

  FUNC0(FUNC6(&repos_relpath,
                                                              &peg_rev,
                                                              &node_kind,
                                                              conflict,
                                                              pool,
                                                              pool));
  if (repos_root_url && repos_relpath)
    FUNC0(FUNC1(&str,
                                     "source-right",
                                     repos_root_url, repos_relpath, peg_rev,
                                     node_kind, pool));

  FUNC15(&str, pool, "tree-conflict");

  return SVN_NO_ERROR;
}