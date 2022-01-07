
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int strings; TYPE_1__* authz; } ;
typedef TYPE_2__ ctor_baton_t ;
typedef int apr_size_t ;
struct TYPE_4__ {int pool; } ;


 char* apr_hash_get (int ,char const*,int ) ;
 int apr_hash_set (int ,char const*,int ,char const*) ;
 char* apr_pstrmemdup (int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *
intern_string(ctor_baton_t *cb, const char *str, apr_size_t len)
{
  const char *interned;

  if (len == (apr_size_t)-1)
    len = strlen(str);

  interned = apr_hash_get(cb->strings, str, len);
  if (!interned)
    {
      interned = apr_pstrmemdup(cb->authz->pool, str, len);
      apr_hash_set(cb->strings, interned, len, interned);
    }
  return interned;
}
