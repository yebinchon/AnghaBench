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
typedef  int /*<<< orphan*/  settings ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  appname; } ;
typedef  TYPE_1__ OPENSSL_INIT_SETTINGS ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_CONF_MFLAGS ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

void FUNC3(const char *appname)
{
    OPENSSL_INIT_SETTINGS settings;

    FUNC1(&settings, 0, sizeof(settings));
    if (appname != NULL)
        settings.appname = FUNC2(appname);
    settings.flags = DEFAULT_CONF_MFLAGS;
    FUNC0(OPENSSL_INIT_LOAD_CONFIG, &settings);
}