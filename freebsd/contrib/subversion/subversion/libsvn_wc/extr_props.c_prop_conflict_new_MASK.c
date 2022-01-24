#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_30__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_t ;
struct TYPE_31__ {void* show_c_function; void* ignore_eol_style; int /*<<< orphan*/  ignore_space; } ;
typedef  TYPE_3__ svn_diff_file_options_t ;
typedef  int /*<<< orphan*/  svn_diff_conflict_display_style_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (char const*,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_diff_conflict_display_modified_original_latest ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_diff_file_ignore_space_none ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,TYPE_2__*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC17(const svn_string_t **conflict_desc,
                  const char *propname,
                  const svn_string_t *original,
                  const svn_string_t *mine,
                  const svn_string_t *incoming,
                  const svn_string_t *incoming_base,
                  svn_cancel_func_t cancel_func,
                  void *cancel_baton,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_diff_t *diff;
  svn_diff_file_options_t *diff_opts;
  svn_stringbuf_t *buf;
  svn_boolean_t incoming_base_is_binary;
  svn_boolean_t mine_is_binary;
  svn_boolean_t incoming_is_binary;

  buf = FUNC2(propname, original, mine, incoming,
                                  incoming_base, scratch_pool);

  /* Convert deleted or not-yet-added values to empty-string values, for the
     purposes of diff generation and binary detection. */
  if (mine == NULL)
    mine = FUNC12(scratch_pool);
  if (incoming == NULL)
    incoming = FUNC12(scratch_pool);
  if (incoming_base == NULL)
    incoming_base = FUNC12(scratch_pool);

  /* How we render the conflict:

     We have four sides: original, mine, incoming_base, incoming.
     We render the conflict as a 3-way diff.  A diff3 API has three parts,
     called:

       <<< - original
       ||| - modified (or "older")
       === - latest (or "theirs")
       >>>

     We fill those parts as follows:

       PART      FILLED BY SKEL MEMBER  USER-FACING ROLE
       ====      =====================  ================
       original  mine                   was WORKING tree at conflict creation
       modified  incoming_base          left-hand side of merge
       latest    incoming               right-hand side of merge
       (none)    original               was BASE tree at conflict creation

     An 'update -r rN' is treated like a 'merge -r BASE:rN', i.e., in an
     'update' operation skel->original and skel->incoming_base coincide.

     Note that the term "original" is used both in the skel and in diff3
     with different meanings.  Note also that the skel's ORIGINAL value was
     at some point in the BASE tree, but the BASE tree need not have contained
     the INCOMING_BASE value.

     Yes, it's confusing. */

  /* If any of the property values involved in the diff is binary data,
   * do not generate a diff. */
  incoming_base_is_binary = FUNC7(incoming_base->data,
                                                  incoming_base->len);
  mine_is_binary = FUNC7(mine->data, mine->len);
  incoming_is_binary = FUNC7(incoming->data, incoming->len);

  if (!(incoming_base_is_binary || mine_is_binary || incoming_is_binary))
    {
      diff_opts = FUNC4(scratch_pool);
      diff_opts->ignore_space = svn_diff_file_ignore_space_none;
      diff_opts->ignore_eol_style = FALSE;
      diff_opts->show_c_function = FALSE;
      /* Pass skel member INCOMING_BASE into the formal parameter ORIGINAL.
         Ignore the skel member ORIGINAL. */
      FUNC0(FUNC5(&diff, incoming_base, mine, incoming,
                                        diff_opts, scratch_pool));
      if (FUNC3(diff))
        {
          svn_stream_t *stream;
          svn_diff_conflict_display_style_t style;
          const char *mine_marker = FUNC1("<<<<<<< (local property value)");
          const char *incoming_marker = FUNC1(">>>>>>> (incoming 'changed to' value)");
          const char *incoming_base_marker = FUNC1("||||||| (incoming 'changed from' value)");
          const char *separator = "=======";
          svn_string_t *incoming_base_ascii =
            FUNC11(FUNC16(incoming_base->data,
                                                              scratch_pool),
                              scratch_pool);
          svn_string_t *mine_ascii =
            FUNC11(FUNC16(mine->data,
                                                              scratch_pool),
                              scratch_pool);
          svn_string_t *incoming_ascii =
            FUNC11(FUNC16(incoming->data,
                                                              scratch_pool),
                              scratch_pool);

          style = svn_diff_conflict_display_modified_original_latest;
          stream = FUNC9(buf, scratch_pool);
          FUNC0(FUNC10(stream, buf->len));
          FUNC0(FUNC6(stream, diff,
                                                    incoming_base_ascii,
                                                    mine_ascii,
                                                    incoming_ascii,
                                                    incoming_base_marker, mine_marker,
                                                    incoming_marker, separator,
                                                    style,
                                                    cancel_func, cancel_baton,
                                                    scratch_pool));
          FUNC0(FUNC8(stream));

          *conflict_desc = FUNC13(buf, result_pool);
          return SVN_NO_ERROR;
        }
    }

  /* If we could not print a conflict diff just print full values . */
  if (mine->len > 0)
    {
      FUNC15(buf, FUNC1("Local property value:\n"));
      if (mine_is_binary)
        FUNC15(buf, FUNC1("Cannot display: property value is "
                                        "binary data\n"));
      else
        FUNC14(buf, mine->data, mine->len);
      FUNC15(buf, "\n");
    }

  if (incoming->len > 0)
    {
      FUNC15(buf, FUNC1("Incoming property value:\n"));
      if (incoming_is_binary)
        FUNC15(buf, FUNC1("Cannot display: property value is "
                                        "binary data\n"));
      else
        FUNC14(buf, incoming->data, incoming->len);
      FUNC15(buf, "\n");
    }

  *conflict_desc = FUNC13(buf, result_pool);
  return SVN_NO_ERROR;
}