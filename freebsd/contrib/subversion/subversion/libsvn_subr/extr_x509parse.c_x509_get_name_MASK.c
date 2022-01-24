#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ x509_name ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int ASN1_CONSTRUCTED ; 
 int ASN1_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_X509_CERT_INVALID_NAME ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned char const**,unsigned char const*,int*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const**,unsigned char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const unsigned char **p, const unsigned char *name_end,
              x509_name *name, apr_pool_t *result_pool)
{
  svn_error_t *err;
  ptrdiff_t len;
  const unsigned char *set_end;
  x509_name *cur = NULL;

  err = FUNC2(p, name_end, &len, ASN1_CONSTRUCTED | ASN1_SET);
  if (err || len < 1)
    return FUNC3(SVN_ERR_X509_CERT_INVALID_NAME, err, NULL);

  set_end = *p + len;

  /*
   * iterate until the end of the SET is reached
   */
  while (*p < set_end)
    {
      if (!cur)
        {
          cur = name;
        }
      else
        {
          cur->next = FUNC1(result_pool, sizeof(x509_name));
          cur = cur->next;
        }
      FUNC0(FUNC5(p, set_end, cur, result_pool));
    }

  /*
   * recurse until end of SEQUENCE (name) is reached
   */
  if (*p == name_end)
    return SVN_NO_ERROR;

  cur->next = FUNC1(result_pool, sizeof(x509_name));

  return FUNC4(FUNC6(p, name_end, cur->next, result_pool));
}