
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct fs_type_defn {struct fs_type_defn* next; int fs_type; } ;
typedef int fs_library_vtable_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_UNKNOWN_FS_TYPE ;
 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int common_pool_lock ;
 struct fs_type_defn* fs_modules ;
 int * get_library_vtable_direct (int **,struct fs_type_defn*,int *) ;
 int get_or_allocate_third (struct fs_type_defn**,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_initialize (int *) ;

__attribute__((used)) static svn_error_t *
get_library_vtable(fs_library_vtable_t **vtable, const char *fs_type,
                   apr_pool_t *pool)
{
  struct fs_type_defn **fst;
  svn_boolean_t known = FALSE;





  for (fst = &fs_modules; *fst; fst = &(*fst)->next)
    {
      if (strcmp(fs_type, (*fst)->fs_type) == 0)
        {
          known = TRUE;
          break;
        }
      else if (!(*fst)->next)
        {
          break;
        }
    }
  if (!known)
    return svn_error_createf(SVN_ERR_FS_UNKNOWN_FS_TYPE, ((void*)0),
                             _("Unknown FS type '%s'"), fs_type);
  return get_library_vtable_direct(vtable, *fst, pool);
}
