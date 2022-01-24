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
struct radius_client_data {int acct_sock; int acct_serv_sock; int acct_serv_sock6; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct radius_client_data *radius)
{
	radius->acct_sock = -1;

	if (radius->acct_serv_sock >= 0) {
		FUNC1(radius->acct_serv_sock);
		FUNC0(radius->acct_serv_sock);
		radius->acct_serv_sock = -1;
	}
#ifdef CONFIG_IPV6
	if (radius->acct_serv_sock6 >= 0) {
		eloop_unregister_read_sock(radius->acct_serv_sock6);
		close(radius->acct_serv_sock6);
		radius->acct_serv_sock6 = -1;
	}
#endif /* CONFIG_IPV6 */
}