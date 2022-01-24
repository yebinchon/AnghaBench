#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char **encoding_p,
                       const svn_string_t **encoded_value_p,
                       serf_bucket_alloc_t *alloc,
                       const svn_string_t *value,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  if (value == NULL)
    {
      *encoding_p = NULL;
      *encoded_value_p = NULL;
      return SVN_NO_ERROR;
    }

  /* If a property is XML-safe, XML-encode it.  Else, base64-encode
     it. */
  if (FUNC3(value->data, value->len))
    {
      svn_stringbuf_t *xml_esc = NULL;
      FUNC2(&xml_esc, value, scratch_pool);
      *encoding_p = NULL;
      *encoded_value_p = FUNC1(xml_esc, result_pool);
    }
  else
    {
      *encoding_p = "base64";
      *encoded_value_p = FUNC0(value, TRUE, result_pool);
    }

  return SVN_NO_ERROR;
}