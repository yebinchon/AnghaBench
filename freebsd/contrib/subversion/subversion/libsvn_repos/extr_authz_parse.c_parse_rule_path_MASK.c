#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_17__ ;
typedef  struct TYPE_18__   TYPE_12__ ;

/* Type definitions */
struct TYPE_21__ {char const* data; int len; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_18__ {int const size; TYPE_5__* data; } ;
struct TYPE_22__ {TYPE_12__ rule_path_buffer; TYPE_1__* authz; TYPE_2__* rule_string_buffer; } ;
typedef  TYPE_3__ ctor_baton_t ;
struct TYPE_23__ {int len; int /*<<< orphan*/ * path; } ;
typedef  TYPE_4__ authz_rule_t ;
struct TYPE_19__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_24__ {scalar_t__ kind; TYPE_17__ pattern; } ;
typedef  TYPE_5__ authz_rule_segment_t ;
typedef  int apr_size_t ;
struct TYPE_20__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SVN_ERR_AUTHZ_INVALID_CONFIG ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int const) ; 
 scalar_t__ authz_rule_any_recursive ; 
 void* authz_rule_any_segment ; 
 scalar_t__ authz_rule_fnmatch ; 
 void* authz_rule_literal ; 
 scalar_t__ authz_rule_prefix ; 
 scalar_t__ authz_rule_suffix ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_17__*,char const*,int) ; 
 int /*<<< orphan*/  interned_empty_string ; 
 char* FUNC5 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_5__*,int const) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_12__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__* const,char) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__* const,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__* const,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__* const,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__* const) ; 

__attribute__((used)) static svn_error_t *
FUNC17(authz_rule_t *rule,
                ctor_baton_t *cb,
                svn_boolean_t glob,
                const char *path,
                apr_size_t path_len,
                const char *section)
{
  svn_stringbuf_t *const pattern = cb->rule_string_buffer;
  const char *const path_end = path + path_len;
  authz_rule_segment_t *segment;
  const char *start;
  const char *end;
  int nseg;

  FUNC0(*path == '/');

  nseg = 0;
  for (start = path; start != path_end; start = end)
    {
      apr_size_t pattern_len;

      /* Skip the leading slash and find the end of the segment. */
      end = FUNC5(++start, '/', path_len - 1);
      if (!end)
        end = path_end;

      pattern_len = end - start;
      path_len -= pattern_len + 1;

      if (pattern_len == 0)
        {
          if (nseg == 0)
            {
              /* This is an empty (root) path. */
              rule->len = 0;
              rule->path = NULL;
              return SVN_NO_ERROR;
            }

          /* A path with two consecutive slashes is not canonical. */
          return FUNC9(
              SVN_ERR_AUTHZ_INVALID_CONFIG,
              FUNC8(SVN_ERR_AUTHZ_INVALID_CONFIG, NULL,
                               FUNC1("Found empty name in authz rule path")),
              FUNC1("Non-canonical path '%s' in authz rule [%s]"),
              path, section);
        }

      /* A path with . or .. segments is not canonical. */
      if (*start == '.'
          && (pattern_len == 1
              || (pattern_len == 2 && start[1] == '.')))
        return FUNC9(
            SVN_ERR_AUTHZ_INVALID_CONFIG,
            (end == start + 1
             ? FUNC8(SVN_ERR_AUTHZ_INVALID_CONFIG, NULL,
                                FUNC1("Found '.' in authz rule path"))
             : FUNC8(SVN_ERR_AUTHZ_INVALID_CONFIG, NULL,
                                FUNC1("Found '..' in authz rule path"))),
            FUNC1("Non-canonical path '%s' in authz rule [%s]"),
            path, section);

      /* Make space for the current segment. */
      ++nseg;
      FUNC10(&cb->rule_path_buffer, nseg * sizeof(*segment));
      segment = cb->rule_path_buffer.data;
      segment += (nseg - 1);

      if (!glob)
        {
          /* Trivial case: this is not a glob rule, so every segment
             is a literal match. */
          segment->kind = authz_rule_literal;
          FUNC4(cb, &segment->pattern, start, pattern_len);
          continue;
        }

      /* Copy the segment into the temporary buffer. */
      FUNC15(pattern);
      FUNC12(pattern, start, pattern_len);

      if (0 == FUNC2(pattern->data))
        {
          /* It's a literal match after all. */
          segment->kind = authz_rule_literal;
          FUNC16(pattern);
          FUNC4(cb, &segment->pattern, pattern->data, pattern->len);
          continue;
        }

      if (*pattern->data == '*')
        {
          if (pattern->len == 1
              || (pattern->len == 2 && pattern->data[1] == '*'))
            {
              /* Process * and **, applying normalization as per
                 https://wiki.apache.org/subversion/AuthzImprovements. */

              authz_rule_segment_t *const prev =
                (nseg > 1 ? segment - 1 : NULL);

              if (pattern_len == 1)
                {
                  /* This is a *. Replace **|* with *|**. */
                  if (prev && prev->kind == authz_rule_any_recursive)
                    {
                      prev->kind = authz_rule_any_segment;
                      segment->kind = authz_rule_any_recursive;
                    }
                  else
                    segment->kind = authz_rule_any_segment;
                }
              else
                {
                  /* This is a **. Replace **|** with a single **. */
                  if (prev && prev->kind == authz_rule_any_recursive)
                    {
                      /* Simply drop the redundant new segment. */
                      --nseg;
                      continue;
                    }
                  else
                    segment->kind = authz_rule_any_recursive;
                }

              segment->pattern.data = interned_empty_string;
              segment->pattern.len = 0;
              continue;
            }

          /* Maybe it's a suffix match? */
          if (0 == FUNC2(pattern->data + 1))
            {
              FUNC14(pattern, 1);
              segment->kind = authz_rule_suffix;
              FUNC16(pattern);
              FUNC7(pattern->data, pattern->len);
              FUNC4(cb, &segment->pattern,
                             pattern->data, pattern->len);
              continue;
            }
        }

      if (pattern->data[pattern->len - 1] == '*')
        {
          /* Might be a prefix match. Note that because of the
             previous test, we already know that the pattern is longer
             than one character. */
          if (pattern->data[pattern->len - 2] != '\\')
            {
              /* OK, the * wasn't  escaped. Chop off the wildcard. */
              FUNC13(pattern, 1);
              if (0 == FUNC2(pattern->data))
                {
                  segment->kind = authz_rule_prefix;
                  FUNC16(pattern);
                  FUNC4(cb, &segment->pattern,
                                 pattern->data, pattern->len);
                  continue;
                }

              /* Restore the wildcard since it was not a prefix match. */
              FUNC11(pattern, '*');
            }
        }

      /* It's a generic fnmatch pattern. */
      segment->kind = authz_rule_fnmatch;
      FUNC4(cb, &segment->pattern, pattern->data, pattern->len);
    }

  FUNC0(nseg > 0);

  /* Copy the temporary segments array into the result pool. */
  {
    const apr_size_t path_size = nseg * sizeof(*segment);
    FUNC0(path_size <= cb->rule_path_buffer.size);

    rule->len = nseg;
    rule->path = FUNC3(cb->authz->pool, path_size);
    FUNC6(rule->path, cb->rule_path_buffer.data, path_size);
  }

  return SVN_NO_ERROR;
}