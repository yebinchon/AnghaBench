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
typedef  int int32_t ;

/* Variables and functions */
 int eAcceptContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct client*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct client*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (struct client*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct client *client,
		   int32_t *hContext,
		   int32_t flags,
		   const krb5_data *itoken,
		   krb5_data *otoken,
		   int32_t *hDelegCred)
{
    int32_t val;
    FUNC0(otoken);
    FUNC1(client, eAcceptContext);
    FUNC1(client, *hContext);
    FUNC1(client, flags);
    FUNC2(client, *itoken);
    FUNC3(client, *hContext);
    FUNC3(client, val);
    FUNC4(client, *otoken);
    FUNC3(client, *hDelegCred);
    return val;
}