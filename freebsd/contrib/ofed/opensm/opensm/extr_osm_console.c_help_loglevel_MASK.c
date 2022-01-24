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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int OSM_LOG_DEBUG ; 
 int OSM_LOG_DEFAULT_LEVEL ; 
 int OSM_LOG_ERROR ; 
 int OSM_LOG_FRAMES ; 
 int OSM_LOG_FUNCS ; 
 int OSM_LOG_INFO ; 
 int OSM_LOG_NONE ; 
 int OSM_LOG_ROUTING ; 
 int OSM_LOG_SYS ; 
 int OSM_LOG_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC1(FILE * out, int detail)
{
	FUNC0(out, "loglevel [<log-level>]\n");
	if (detail) {
		FUNC0(out, "   log-level is OR'ed from the following\n");
		FUNC0(out, "   OSM_LOG_NONE             0x%02X\n",
			OSM_LOG_NONE);
		FUNC0(out, "   OSM_LOG_ERROR            0x%02X\n",
			OSM_LOG_ERROR);
		FUNC0(out, "   OSM_LOG_INFO             0x%02X\n",
			OSM_LOG_INFO);
		FUNC0(out, "   OSM_LOG_VERBOSE          0x%02X\n",
			OSM_LOG_VERBOSE);
		FUNC0(out, "   OSM_LOG_DEBUG            0x%02X\n",
			OSM_LOG_DEBUG);
		FUNC0(out, "   OSM_LOG_FUNCS            0x%02X\n",
			OSM_LOG_FUNCS);
		FUNC0(out, "   OSM_LOG_FRAMES           0x%02X\n",
			OSM_LOG_FRAMES);
		FUNC0(out, "   OSM_LOG_ROUTING          0x%02X\n",
			OSM_LOG_ROUTING);
		FUNC0(out, "   OSM_LOG_SYS              0x%02X\n",
			OSM_LOG_SYS);
		FUNC0(out, "\n");
		FUNC0(out, "   OSM_LOG_DEFAULT_LEVEL    0x%02X\n",
			OSM_LOG_DEFAULT_LEVEL);
	}
}