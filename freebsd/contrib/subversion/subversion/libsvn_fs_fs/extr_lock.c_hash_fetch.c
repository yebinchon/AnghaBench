
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int apr_hash_t ;


 TYPE_1__* svn_hash_gets (int *,char const*) ;

__attribute__((used)) static const char *
hash_fetch(apr_hash_t *hash,
           const char *key)
{
  svn_string_t *str = svn_hash_gets(hash, key);
  return str ? str->data : ((void*)0);
}
