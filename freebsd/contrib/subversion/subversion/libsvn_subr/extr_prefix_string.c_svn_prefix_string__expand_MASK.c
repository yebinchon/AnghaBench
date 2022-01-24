#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* data; int len; } ;
typedef  TYPE_2__ svn_string_t ;
struct TYPE_9__ {TYPE_1__* prefix; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ svn_prefix_string__t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {int length; TYPE_3__ key; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

svn_string_t *
FUNC4(const svn_prefix_string__t *s,
                          apr_pool_t *pool)
{
  apr_size_t s_len = FUNC3(s->data);
  apr_size_t len = s->prefix->length + s_len;
  char *buffer = FUNC0(pool, len + 1);

  svn_string_t *result = FUNC1(pool, sizeof(*result));
  result->data = buffer;
  result->len = len;
  buffer[len] = '\0';

  while (s->prefix)
    {
      FUNC2(buffer + s->prefix->length, s->data, len - s->prefix->length);
      len = s->prefix->length;
      s = &s->prefix->key;
    }

  return result;
}