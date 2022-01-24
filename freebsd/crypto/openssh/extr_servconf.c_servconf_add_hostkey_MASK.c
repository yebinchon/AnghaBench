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
struct TYPE_3__ {int /*<<< orphan*/  num_host_key_files; int /*<<< orphan*/  host_key_files; } ;
typedef  TYPE_1__ ServerOptions ;

/* Variables and functions */
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int const,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 char const* defaultkey ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(const char *file, const int line,
    ServerOptions *options, const char *path)
{
	char *apath = FUNC2(path);

	if (file == defaultkey && FUNC0(path, R_OK) != 0)
		return;
	FUNC1(file, line, "HostKey",
	    &options->host_key_files, &options->num_host_key_files, apath);
	FUNC3(apath);
}