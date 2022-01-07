
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notify_baton {int conflicted_paths; } ;


 int APR_HASH_KEY_STRING ;
 int apr_hash_pool_get (int ) ;
 int apr_hash_set (int ,int ,int ,char*) ;
 int apr_pstrdup (int ,char const*) ;

__attribute__((used)) static void
add_conflicted_path(struct notify_baton *nb, const char *path)
{
  apr_hash_set(nb->conflicted_paths,
               apr_pstrdup(apr_hash_pool_get(nb->conflicted_paths), path),
               APR_HASH_KEY_STRING, "");
}
