#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct TYPE_5__ {TYPE_1__ subscriber_gid; } ;
typedef  TYPE_2__ ib_inform_info_record_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC3(char *str, ib_inform_info_record_t *ir)
{
       int rc = FUNC2(AF_INET6,str,&(ir->subscriber_gid.raw));
       if(rc < 1){
          FUNC1(stderr, "Invalid SubscriberGID specified: \"%s\"\n",str);
          FUNC0(EINVAL);
       }
       return rc;
}