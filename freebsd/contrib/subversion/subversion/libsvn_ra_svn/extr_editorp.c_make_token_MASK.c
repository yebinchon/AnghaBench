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
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_3__ {int /*<<< orphan*/  next_token; } ;
typedef  TYPE_1__ ra_svn_edit_baton_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_INT64_BUFFER_SIZE ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_string_t *
FUNC2(char type,
           ra_svn_edit_baton_t *eb,
           apr_pool_t *pool)
{
  apr_size_t len;
  char buffer[1 + SVN_INT64_BUFFER_SIZE];
  buffer[0] = type;
  len = 1 + FUNC0(&buffer[1], eb->next_token++);
  
  return FUNC1(buffer, len, pool);
}