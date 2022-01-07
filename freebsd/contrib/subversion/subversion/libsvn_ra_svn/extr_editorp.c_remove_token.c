
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_6__ {int * last_token; int tokens; } ;
typedef TYPE_2__ ra_svn_driver_state_t ;


 int apr_hash_set (int ,int ,int ,int *) ;

__attribute__((used)) static void remove_token(ra_svn_driver_state_t *ds,
                         svn_string_t *token)
{
  apr_hash_set(ds->tokens, token->data, token->len, ((void*)0));




  ds->last_token = ((void*)0);
}
