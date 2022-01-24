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
struct client {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  GSMERR_OK ; 
 int /*<<< orphan*/  eGetVersionAndCapabilities ; 
 int /*<<< orphan*/  FUNC0 (struct client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct client*,char*) ; 

__attribute__((used)) static int32_t
FUNC3(struct client *client,
		 int32_t *version, int32_t *capa,
		 char **version_str)
{
    FUNC0(client, eGetVersionAndCapabilities);
    FUNC1(client, *version);
    FUNC1(client, *capa);
    FUNC2(client, *version_str);
    return GSMERR_OK;
}