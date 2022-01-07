
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* local_abspath; } ;
typedef TYPE_1__ svn_client_conflict_t ;



const char *
svn_client_conflict_get_local_abspath(svn_client_conflict_t *conflict)
{
  return conflict->local_abspath;
}
