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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_signal ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char const* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_mutex ; 

const char *
FUNC5(krb5_context context)
{
    FUNC0(&signal_mutex);
    if (!default_signal)
	FUNC2(&default_signal, "%d/signal", FUNC3(context));
    FUNC1(&signal_mutex);

    return FUNC4(context,
					  NULL,
					  default_signal,
					  "kdc",
					  "signal_socket",
					  NULL);
}