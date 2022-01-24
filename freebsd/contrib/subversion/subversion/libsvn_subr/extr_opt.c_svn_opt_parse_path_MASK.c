#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ number; } ;
struct TYPE_7__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef  TYPE_2__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,char) ; 
 size_t FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 char const* FUNC5 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_opt_revision_unspecified ; 
 scalar_t__ FUNC9 (char const*) ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_opt_revision_t *rev,
                   const char **truepath,
                   const char *path /* UTF-8! */,
                   apr_pool_t *pool)
{
  const char *peg_rev;

  FUNC0(FUNC7(truepath, &peg_rev, path, pool));

  /* Parse the peg revision, if one was found */
  if (FUNC3(peg_rev))
    {
      int ret;
      svn_opt_revision_t start_revision, end_revision;

      end_revision.kind = svn_opt_revision_unspecified;

      if (peg_rev[1] == '\0')  /* looking at empty peg revision */
        {
          ret = 0;
          start_revision.kind = svn_opt_revision_unspecified;
          start_revision.value.number = 0;
        }
      else  /* looking at non-empty peg revision */
        {
          const char *rev_str = &peg_rev[1];

          /* URLs get treated differently from wc paths. */
          if (FUNC9(path))
            {
              /* URLs are URI-encoded, so we look for dates with
                 URI-encoded delimiters.  */
              size_t rev_len = FUNC3(rev_str);
              if (rev_len > 6
                  && rev_str[0] == '%'
                  && rev_str[1] == '7'
                  && (rev_str[2] == 'B'
                      || rev_str[2] == 'b')
                  && rev_str[rev_len-3] == '%'
                  && rev_str[rev_len-2] == '7'
                  && (rev_str[rev_len-1] == 'D'
                      || rev_str[rev_len-1] == 'd'))
                {
                  rev_str = FUNC10(rev_str, pool);
                }
            }
          ret = FUNC8(&start_revision,
                                       &end_revision,
                                       rev_str, pool);
        }

      if (ret || end_revision.kind != svn_opt_revision_unspecified)
        {
          /* If an svn+ssh URL was used and it contains only one @,
           * provide an error message that presents a possible solution
           * to the parsing error (issue #2349). */
          if (FUNC4(path, "svn+ssh://", 10) == 0)
            {
              const char *at;

              at = FUNC2(path, '@');
              if (at && FUNC5(path, '@') == at)
                return FUNC6(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                                         FUNC1("Syntax error parsing peg revision "
                                           "'%s'; did you mean '%s@'?"),
                                       &peg_rev[1], path);
            }

          return FUNC6(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                                   FUNC1("Syntax error parsing peg revision '%s'"),
                                   &peg_rev[1]);
        }
      rev->kind = start_revision.kind;
      rev->value = start_revision.value;
    }
  else
    {
      /* Didn't find a peg revision. */
      rev->kind = svn_opt_revision_unspecified;
    }

  return SVN_NO_ERROR;
}