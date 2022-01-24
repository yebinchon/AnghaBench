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
struct connection_info {int dummy; } ;
typedef  int /*<<< orphan*/  ServerOptions ;

/* Variables and functions */
 int /*<<< orphan*/  cfg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct connection_info*) ; 

void
FUNC3(ServerOptions *options,
   struct connection_info *connectinfo)
{
	ServerOptions mo;

	FUNC1(&mo);
	FUNC2(&mo, "reprocess config", cfg, connectinfo);
	FUNC0(options, &mo, 0);
}