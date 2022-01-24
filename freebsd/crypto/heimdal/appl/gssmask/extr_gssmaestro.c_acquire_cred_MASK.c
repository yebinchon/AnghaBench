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
typedef  int int32_t ;

/* Variables and functions */
 int eAcquireCreds ; 
 int /*<<< orphan*/  FUNC0 (struct client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct client*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct client*,int) ; 

__attribute__((used)) static int
FUNC3(struct client *client,
	     const char *username,
	     const char *password,
	     int32_t flags,
	     int32_t *hCred)
{
    int32_t val;
    FUNC0(client, eAcquireCreds);
    FUNC1(client, username);
    FUNC1(client, password);
    FUNC0(client, flags);
    FUNC2(client, val);
    FUNC2(client, *hCred);
    return val;
}