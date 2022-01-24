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
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *) ; 
 char* slave_stats_file ; 

__attribute__((used)) static FILE *
FUNC5(krb5_context context)
{
    char *statfile = NULL;
    const char *fn;
    FILE *f;

    if (slave_stats_file)
	fn = slave_stats_file;
    else {
	FUNC0(&statfile,  "%d/slaves-stats", FUNC3(context));
	fn = FUNC4(context,
					    NULL,
					    statfile,
					    "kdc",
					    "iprop-stats",
					    NULL);
    }
    f = FUNC1(fn, "w");
    if (statfile)
	FUNC2(statfile);

    return f;
}