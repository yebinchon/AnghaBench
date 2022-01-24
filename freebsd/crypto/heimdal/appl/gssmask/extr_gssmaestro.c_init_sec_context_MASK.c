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
 int eInitContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct client*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct client*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (struct client*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct client*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct client *client,
		 int32_t *hContext, int32_t *hCred,
		 int32_t flags,
		 const char *targetname,
		 const krb5_data *itoken, krb5_data *otoken)
{
    int32_t val;
    FUNC0(otoken);
    FUNC1(client, eInitContext);
    FUNC1(client, *hContext);
    FUNC1(client, *hCred);
    FUNC1(client, flags);
    FUNC3(client, targetname);
    FUNC2(client, *itoken);
    FUNC4(client, *hContext);
    FUNC4(client, val);
    FUNC5(client, *otoken);
    return val;
}