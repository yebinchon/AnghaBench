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
struct TYPE_4__ {char const* data; int len; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  dirsep ;
typedef  int apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,int) ; 

void
FUNC5(svn_stringbuf_t *path,
                       const char *component)
{
  apr_size_t len = FUNC3(component);

  FUNC1(FUNC2(path->data, path->len));
  FUNC1(FUNC2(component, FUNC3(component)));

  /* Append a dir separator, but only if this path is neither empty
     nor consists of a single dir separator already. */
  if ((! FUNC0(path->data))
      && (! ((path->len == 1) && (*(path->data) == '/'))))
    {
      char dirsep = '/';
      FUNC4(path, &dirsep, sizeof(dirsep));
    }

  FUNC4(path, component, len);
}