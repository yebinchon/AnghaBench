#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC4(apr_hash_t *org, apr_pool_t *pool)
{
  const char *cn = FUNC0(org, "CN");
  const char *org_unit = FUNC0(org, "OU");
  const char *org_name = FUNC0(org, "O");
  const char *locality = FUNC0(org, "L");
  const char *state = FUNC0(org, "ST");
  const char *country = FUNC0(org, "C");
  const char *email = FUNC0(org, "E");
  svn_stringbuf_t *buf = FUNC3(pool);

  if (cn)
    {
      FUNC1(buf, cn);
      FUNC1(buf, ", ");
    }

  if (org_unit)
    {
      FUNC1(buf, org_unit);
      FUNC1(buf, ", ");
    }

  if (org_name)
    {
      FUNC1(buf, org_name);
      FUNC1(buf, ", ");
    }

  if (locality)
    {
      FUNC1(buf, locality);
      FUNC1(buf, ", ");
    }

  if (state)
    {
      FUNC1(buf, state);
      FUNC1(buf, ", ");
    }

  if (country)
    {
      FUNC1(buf, country);
      FUNC1(buf, ", ");
    }

  /* Chop ', ' if any. */
  FUNC2(buf, 2);

  if (email)
    {
      FUNC1(buf, "(");
      FUNC1(buf, email);
      FUNC1(buf, ")");
    }

  return buf->data;
}