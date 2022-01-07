
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* repository; TYPE_1__* client_info; } ;
typedef TYPE_3__ server_baton_t ;
typedef enum access_type { ____Placeholder_access_type } access_type ;
struct TYPE_6__ {int auth_access; int anon_access; } ;
struct TYPE_5__ {scalar_t__ user; } ;



__attribute__((used)) static enum access_type
current_access(server_baton_t *b)
{
  return b->client_info->user ? b->repository->auth_access
                              : b->repository->anon_access;
}
