#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_8__ {char* sun_path; } ;
struct TYPE_11__ {int log_fd; TYPE_3__* socket_info; void* socket_fd; TYPE_1__ socket_name; int /*<<< orphan*/ * log_file; } ;
struct TYPE_9__ {int /*<<< orphan*/ * stash_file; int /*<<< orphan*/ * dbname; int /*<<< orphan*/ * acl_file; } ;
struct TYPE_12__ {int /*<<< orphan*/  caller; int /*<<< orphan*/  context; TYPE_4__ log_context; TYPE_2__ config; int /*<<< orphan*/  db; } ;
typedef  TYPE_5__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  int /*<<< orphan*/  kadm5_config_params ;
struct TYPE_10__ {int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (TYPE_5__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kadm5_ret_t
FUNC7(krb5_context context,
			  const char *client_name,
			  const char *service_name,
			  kadm5_config_params *realm_params,
			  unsigned long struct_version,
			  unsigned long api_version,
			  void **server_handle)
{
    kadm5_ret_t ret;
    kadm5_server_context *ctx;
    ret = FUNC1(&ctx, realm_params, context);
    if(ret)
	return ret;

    FUNC2(ctx->config.dbname != NULL);
    FUNC2(ctx->config.stash_file != NULL);
    FUNC2(ctx->config.acl_file != NULL);
    FUNC2(ctx->log_context.log_file != NULL);
#ifndef NO_UNIX_SOCKETS
    FUNC2(ctx->log_context.socket_name.sun_path[0] != '\0');
#else
    assert(ctx->log_context.socket_info != NULL);
#endif

    ret = FUNC3(ctx->context, &ctx->db, ctx->config.dbname);
    if(ret)
	return ret;
    ret = FUNC4 (ctx->context,
				  ctx->db, ctx->config.stash_file);
    if(ret)
	return ret;

    ctx->log_context.log_fd   = -1;

#ifndef NO_UNIX_SOCKETS
    ctx->log_context.socket_fd = FUNC6 (AF_UNIX, SOCK_DGRAM, 0);
#else
    ctx->log_context.socket_fd = socket (ctx->log_context.socket_info->ai_family,
					 ctx->log_context.socket_info->ai_socktype,
					 ctx->log_context.socket_info->ai_protocol);
#endif

    ret = FUNC5(ctx->context, client_name, &ctx->caller);
    if(ret)
	return ret;

    ret = FUNC0(ctx);
    if(ret)
	return ret;

    *server_handle = ctx;
    return 0;
}