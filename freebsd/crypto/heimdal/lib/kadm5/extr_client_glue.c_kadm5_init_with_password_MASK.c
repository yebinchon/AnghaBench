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
typedef  int /*<<< orphan*/  kadm5_ret_t ;
typedef  int /*<<< orphan*/  kadm5_config_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,char const*,int /*<<< orphan*/ *,unsigned long,unsigned long,void**) ; 

kadm5_ret_t
FUNC1(const char *client_name,
			 const char *password,
			 const char *service_name,
			 kadm5_config_params *realm_params,
			 unsigned long struct_version,
			 unsigned long api_version,
			 void **server_handle)
{
    return FUNC0(client_name,
				      password,
				      service_name,
				      realm_params,
				      struct_version,
				      api_version,
				      server_handle);
}