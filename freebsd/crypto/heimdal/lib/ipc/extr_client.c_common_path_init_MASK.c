#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct path_ctx {int fd; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 struct path_ctx* FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(const char *service,
		 const char *file,
		 void **ctx)
{
    struct path_ctx *s;

    s = FUNC1(sizeof(*s));
    if (s == NULL)
	return ENOMEM;
    s->fd = -1;

    FUNC0(&s->path, "/var/run/.heim_%s-%s", service, file);

    *ctx = s;

    return 0;
}