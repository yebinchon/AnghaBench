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
struct sockaddr_storage {int dummy; } ;
struct ctrl_iface_priv {int /*<<< orphan*/  ctrl_dst; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ *,struct sockaddr_storage*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC2(struct ctrl_iface_priv *priv,
					   struct sockaddr_storage *from,
					   socklen_t fromlen,
					   char *level)
{
	FUNC1(MSG_DEBUG, "CTRL_IFACE LEVEL %s", level);

	return FUNC0(&priv->ctrl_dst, from, fromlen, level);
}