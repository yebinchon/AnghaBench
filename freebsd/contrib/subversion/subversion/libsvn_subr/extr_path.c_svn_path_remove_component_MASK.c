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
struct TYPE_3__ {char* data; size_t len; } ;
typedef  TYPE_1__ svn_stringbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 size_t FUNC2 (char*,size_t) ; 

void
FUNC3(svn_stringbuf_t *path)
{
  FUNC0(FUNC1(path->data, path->len));

  path->len = FUNC2(path->data, path->len);
  path->data[path->len] = '\0';
}