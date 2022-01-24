#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct string_stream_baton {scalar_t__ amt_read; TYPE_1__* str; } ;
typedef  scalar_t__ apr_size_t ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 

__attribute__((used)) static svn_error_t *
FUNC0(void *baton, apr_size_t len)
{
  struct string_stream_baton *btn = baton;
  apr_size_t left_to_read = btn->str->len - btn->amt_read;

  len = (len > left_to_read) ? left_to_read : len;
  btn->amt_read += len;
  return SVN_NO_ERROR;
}