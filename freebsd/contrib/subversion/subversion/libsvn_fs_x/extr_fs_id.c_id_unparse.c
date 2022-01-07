
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_fs_id_t ;
struct TYPE_2__ {int noderev_id; } ;
typedef TYPE_1__ fs_x__id_t ;
typedef int apr_pool_t ;


 int * svn_fs_x__id_unparse (int *,int *) ;

__attribute__((used)) static svn_string_t *
id_unparse(const svn_fs_id_t *fs_id,
           apr_pool_t *result_pool)
{
  const fs_x__id_t *id = (const fs_x__id_t *)fs_id;
  return svn_fs_x__id_unparse(&id->noderev_id, result_pool);
}
