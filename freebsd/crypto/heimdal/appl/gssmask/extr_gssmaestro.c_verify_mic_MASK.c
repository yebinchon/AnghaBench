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
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  eVerify ; 
 int /*<<< orphan*/  FUNC0 (struct client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC3(struct client *client, int32_t hContext,
	   krb5_data *in, krb5_data *mic)
{
    int32_t val;
    FUNC0(client, eVerify);
    FUNC0(client, hContext);
    FUNC0(client, 0);
    FUNC0(client, 0);
    FUNC1(client, *in);
    FUNC1(client, *mic);
    FUNC2(client, val);
    return val;
}