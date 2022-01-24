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
 int eToastResource ; 
 int /*<<< orphan*/  FUNC0 (struct client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct client*,int) ; 

__attribute__((used)) static int
FUNC2(struct client *client,
	       int32_t hCred)
{
    int32_t val;
    FUNC0(client, eToastResource);
    FUNC0(client, hCred);
    FUNC1(client, val);
    return val;
}