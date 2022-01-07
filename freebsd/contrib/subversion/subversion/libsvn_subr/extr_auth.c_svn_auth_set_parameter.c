
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ parameters; scalar_t__ slave_parameters; } ;
typedef TYPE_1__ svn_auth_baton_t ;


 int auth_NULL ;
 int svn_hash_sets (scalar_t__,char const*,void const*) ;

void
svn_auth_set_parameter(svn_auth_baton_t *auth_baton,
                       const char *name,
                       const void *value)
{
  if (auth_baton)
    {
      if (auth_baton->slave_parameters)
        {
          if (!value)
            value = &auth_NULL;

          svn_hash_sets(auth_baton->slave_parameters, name, value);
        }
      else
        svn_hash_sets(auth_baton->parameters, name, value);
    }
}
