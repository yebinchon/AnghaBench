
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int capabilities; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;
typedef int svn_boolean_t ;


 int * svn_hash_gets (int ,char const*) ;

svn_boolean_t svn_ra_svn_has_capability(svn_ra_svn_conn_t *conn,
                                        const char *capability)
{
  return (svn_hash_gets(conn->capabilities, capability) != ((void*)0));
}
