
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_skel_t ;
typedef int apr_pool_t ;
typedef int DBT ;


 int svn_fs_base__set_dbt (int *,int ,int ) ;
 TYPE_1__* svn_skel__unparse (int *,int *) ;

DBT *
svn_fs_base__skel_to_dbt(DBT *dbt,
                         svn_skel_t *skel,
                         apr_pool_t *pool)
{
  svn_stringbuf_t *unparsed_skel = svn_skel__unparse(skel, pool);
  svn_fs_base__set_dbt(dbt, unparsed_skel->data, unparsed_skel->len);
  return dbt;
}
