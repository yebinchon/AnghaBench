
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* fsap_data; int * vtable; } ;
typedef TYPE_1__ svn_fs_id_t ;
struct TYPE_5__ {char* node_id; char* copy_id; char* txn_id; } ;
typedef TYPE_2__ id_private_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 void* apr_palloc (int *,int) ;
 char* apr_pstrmemdup (int *,char const*,int ) ;
 int id_vtable ;
 char* svn_cstring_tokenize (char*,char**) ;

svn_fs_id_t *
svn_fs_base__id_parse(const char *data,
                      apr_size_t len,
                      apr_pool_t *pool)
{
  svn_fs_id_t *id;
  id_private_t *pvt;
  char *data_copy, *str;



  data_copy = apr_pstrmemdup(pool, data, len);


  id = apr_palloc(pool, sizeof(*id));
  pvt = apr_palloc(pool, sizeof(*pvt));
  id->vtable = &id_vtable;
  id->fsap_data = pvt;
  str = svn_cstring_tokenize(".", &data_copy);
  if (str == ((void*)0))
    return ((void*)0);
  pvt->node_id = str;


  str = svn_cstring_tokenize(".", &data_copy);
  if (str == ((void*)0))
    return ((void*)0);
  pvt->copy_id = str;


  str = svn_cstring_tokenize(".", &data_copy);
  if (str == ((void*)0))
    return ((void*)0);
  pvt->txn_id = str;

  return id;
}
