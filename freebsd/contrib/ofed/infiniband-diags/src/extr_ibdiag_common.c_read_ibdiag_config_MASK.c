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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  IBND_CONFIG_MLX_EPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* ibd_ca ; 
 void* ibd_ca_port ; 
 int /*<<< orphan*/  ibd_ibnetdisc_flags ; 
 void* ibd_mkey ; 
 void* ibd_nd_format ; 
 void* ibd_sakey ; 
 void* ibd_timeout ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char*,char**) ; 
 void* FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*) ; 

void FUNC12(const char *file)
{
	char buf[1024];
	FILE *config_fd = NULL;
	char *p_prefix, *p_last;
	char *name;
	char *val_str;
	struct stat statbuf;

	/* silently ignore missing config file */
	if (FUNC4(file, &statbuf))
		return;

	config_fd = FUNC2(file, "r");
	if (!config_fd)
		return;

	while (FUNC1(buf, sizeof buf, config_fd) != NULL) {
		p_prefix = FUNC8(buf, "\n", &p_last);
		if (!p_prefix)
			continue; /* ignore blank lines */

		if (*p_prefix == '#')
			continue; /* ignore comment lines */

		name = FUNC8(p_prefix, "=", &p_last);
		val_str = FUNC8(NULL, "\n", &p_last);

		if (FUNC7(name, "CA", FUNC6("CA")) == 0) {
			FUNC3(ibd_ca);
			ibd_ca = FUNC5(val_str);
		} else if (FUNC7(name, "Port", FUNC6("Port")) == 0) {
			ibd_ca_port = FUNC9(val_str, NULL, 0);
		} else if (FUNC7(name, "timeout", FUNC6("timeout")) == 0) {
			ibd_timeout = FUNC9(val_str, NULL, 0);
		} else if (FUNC7(name, "MLX_EPI", FUNC6("MLX_EPI")) == 0) {
			if (FUNC11(val_str)) {
				ibd_ibnetdisc_flags |= IBND_CONFIG_MLX_EPI;
			} else {
				ibd_ibnetdisc_flags &= ~IBND_CONFIG_MLX_EPI;
			}
		} else if (FUNC7(name, "m_key", FUNC6("m_key")) == 0) {
			ibd_mkey = FUNC10(val_str, 0, 0);
		} else if (FUNC7(name, "sa_key",
				   FUNC6("sa_key")) == 0) {
			ibd_sakey = FUNC10(val_str, 0, 0);
		} else if (FUNC7(name, "nd_format",
				   FUNC6("nd_format")) == 0) {
			ibd_nd_format = FUNC5(val_str);
		}
	}

	FUNC0(config_fd);
}