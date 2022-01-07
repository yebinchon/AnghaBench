
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t size; char* data; } ;
typedef TYPE_1__ svn_membuf_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 int svn_membuf__create (TYPE_1__*,size_t,int *) ;

__attribute__((used)) static svn_membuf_t *
construct_filtered_key(const char *repos_name,
                       const char *user,
                       const svn_membuf_t *authz_id,
                       apr_pool_t *result_pool)
{
  svn_membuf_t *result = apr_pcalloc(result_pool, sizeof(*result));
  size_t repos_len = strlen(repos_name);
  size_t user_len = user ? strlen(user) : 1;
  const char *nullable_user = user ? user : "\0";
  size_t size = authz_id->size + repos_len + 1 + user_len + 1;

  svn_membuf__create(result, size, result_pool);
  result->size = size;

  memcpy(result->data, repos_name, repos_len + 1);
  size = repos_len + 1;
  memcpy((char *)result->data + size, nullable_user, user_len + 1);
  size += user_len + 1;
  memcpy((char *)result->data + size, authz_id->data, authz_id->size);

  return result;
}
