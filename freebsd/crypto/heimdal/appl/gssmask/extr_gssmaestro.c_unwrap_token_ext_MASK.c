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
 int /*<<< orphan*/  eUnwrapExt ; 
 int /*<<< orphan*/  FUNC0 (struct client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC4(struct client *client, int32_t hContext, int32_t flags,
	       int32_t bflags, krb5_data *header, krb5_data *in, krb5_data *trailer,
	       krb5_data *out)
{
    int32_t val;
    FUNC0(client, eUnwrapExt);
    FUNC0(client, hContext);
    FUNC0(client, flags);
    FUNC0(client, bflags);
    FUNC1(client, *header);
    FUNC1(client, *in);
    FUNC1(client, *trailer);
    FUNC2(client, val);
    FUNC3(client, *out);
    return val;
}