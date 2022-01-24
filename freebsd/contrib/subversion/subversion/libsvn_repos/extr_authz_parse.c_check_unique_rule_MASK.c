#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/  parser_pool; int /*<<< orphan*/  parsed_rules; TYPE_2__* rule_string_buffer; } ;
typedef  TYPE_3__ ctor_baton_t ;
struct TYPE_15__ {int len; TYPE_5__* path; int /*<<< orphan*/  repos; } ;
typedef  TYPE_4__ authz_rule_t ;
struct TYPE_12__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_16__ {char kind; TYPE_1__ pattern; } ;
typedef  TYPE_5__ authz_rule_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_AUTHZ_INVALID_CONFIG ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__* const,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__* const) ; 

__attribute__((used)) static svn_error_t *
FUNC10(ctor_baton_t *cb,
                  const authz_rule_t *rule,
                  const char *section)
{
  svn_stringbuf_t *const buf = cb->rule_string_buffer;
  const char *exists;
  int i;

  /* Construct the key for this rule */
  FUNC9(buf);
  FUNC8(buf, rule->repos);
  FUNC6(buf, '\n');

  for (i = 0; i < rule->len; ++i)
    {
      authz_rule_segment_t *const seg = &rule->path[i];
      FUNC6(buf, '@' + seg->kind);
      FUNC7(buf, seg->pattern.data, seg->pattern.len);
      FUNC6(buf, '\n');
    }

  /* Check if the section exists. */
  exists = FUNC1(cb->parsed_rules, buf->data, buf->len);
  if (exists)
    return FUNC5(
        SVN_ERR_AUTHZ_INVALID_CONFIG, NULL,
        FUNC0("Section [%s] describes the same rule as section [%s]"),
        section, exists);

  /* Insert the rule into the known rules set. */
  FUNC2(cb->parsed_rules,
               FUNC4(cb->parser_pool, buf->data, buf->len),
               buf->len,
               FUNC3(cb->parser_pool, section));

  return SVN_NO_ERROR;
}