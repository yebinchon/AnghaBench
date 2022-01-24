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
typedef  int /*<<< orphan*/  svn_wc_operation_t ;
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_3__ {scalar_t__ nelts; } ;
typedef  TYPE_1__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,TYPE_1__**,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_xml_normal ; 

svn_error_t *
FUNC16(svn_stringbuf_t *str,
                                 svn_client_conflict_t *conflict,
                                 apr_pool_t *scratch_pool)
{
  apr_hash_t *att_hash;
  svn_boolean_t text_conflicted;
  apr_array_header_t *props_conflicted;
  svn_boolean_t tree_conflicted;
  svn_wc_operation_t conflict_operation;
  const char *repos_root_url;
  const char *repos_relpath;
  svn_revnum_t peg_rev;
  svn_node_kind_t node_kind;

  conflict_operation = FUNC8(conflict);

  FUNC0(FUNC6(&text_conflicted,
                                             &props_conflicted,
                                             &tree_conflicted,
                                             conflict,
                                             scratch_pool, scratch_pool));
  if (tree_conflicted)
    {
      /* Uses other element type */
      return FUNC12(
                FUNC2(str, conflict, scratch_pool));
    }

  FUNC0(FUNC9(&repos_root_url, NULL,
                                             conflict,
                                             scratch_pool, scratch_pool));
  att_hash = FUNC3(scratch_pool);

  FUNC13(att_hash, "operation",
                FUNC4(conflict_operation, scratch_pool));

  FUNC13(att_hash, "operation",
                FUNC4(conflict_operation, scratch_pool));

  if (text_conflicted)
    {
      const char *base_abspath;
      const char *my_abspath;
      const char *their_abspath;

      FUNC13(att_hash, "type", "text");

      /* "<conflict>" */
      FUNC15(&str, scratch_pool,
                                 svn_xml_normal, "conflict", att_hash);

      FUNC0(FUNC7(
                &repos_relpath, &peg_rev, &node_kind, conflict,
                scratch_pool, scratch_pool));
      if (repos_root_url && repos_relpath)
        FUNC0(FUNC1(&str, "source-left",
                                         repos_root_url, repos_relpath, peg_rev,
                                         node_kind, scratch_pool));

      FUNC0(FUNC7(
                &repos_relpath, &peg_rev, &node_kind, conflict,
                scratch_pool, scratch_pool));
      if (repos_root_url && repos_relpath)
        FUNC0(FUNC1(&str, "source-right",
                                         repos_root_url, repos_relpath, peg_rev,
                                         node_kind, scratch_pool));

      FUNC0(FUNC11(NULL, &my_abspath,
                                                    &base_abspath,
                                                    &their_abspath,
                                                    conflict, scratch_pool,
                                                    scratch_pool));
      /* "<prev-base-file> xx </prev-base-file>" */
      FUNC5(
        &str, scratch_pool, "prev-base-file", base_abspath);

      /* "<prev-wc-file> xx </prev-wc-file>" */
      FUNC5(
        &str, scratch_pool, "prev-wc-file", my_abspath);

      /* "<cur-base-file> xx </cur-base-file>" */
      FUNC5(
        &str, scratch_pool, "cur-base-file", their_abspath);

      /* "</conflict>" */
      FUNC14(&str, scratch_pool, "conflict");
    }

  if (props_conflicted->nelts > 0)
    {
      const char *reject_abspath;

      FUNC13(att_hash, "type", "property");

      /* "<conflict>" */
      FUNC15(&str, scratch_pool,
                                 svn_xml_normal, "conflict", att_hash);

      FUNC0(FUNC7(
                &repos_relpath, &peg_rev, &node_kind, conflict,
                scratch_pool, scratch_pool));
      if (repos_root_url && repos_relpath)
        FUNC0(FUNC1(&str, "source-left",
                                         repos_root_url, repos_relpath, peg_rev,
                                         node_kind, scratch_pool));

      FUNC0(FUNC7(
                &repos_relpath, &peg_rev, &node_kind, conflict,
                scratch_pool, scratch_pool));
      if (repos_root_url && repos_relpath)
        FUNC0(FUNC1(&str, "source-right",
                                         repos_root_url, repos_relpath, peg_rev,
                                         node_kind, scratch_pool));

      /* "<prop-file> xx </prop-file>" */
      reject_abspath =
        FUNC10(conflict);
      FUNC5(
        &str, scratch_pool, "prop-file", reject_abspath);

      /* "</conflict>" */
      FUNC14(&str, scratch_pool, "conflict");
    }

  return SVN_NO_ERROR;
}