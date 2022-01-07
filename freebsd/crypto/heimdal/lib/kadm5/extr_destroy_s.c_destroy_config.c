
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stash_file; int acl_file; int dbname; int realm; } ;
typedef TYPE_1__ kadm5_config_params ;


 int free (int ) ;

__attribute__((used)) static void
destroy_config (kadm5_config_params *c)
{
    free (c->realm);
    free (c->dbname);
    free (c->acl_file);
    free (c->stash_file);
}
