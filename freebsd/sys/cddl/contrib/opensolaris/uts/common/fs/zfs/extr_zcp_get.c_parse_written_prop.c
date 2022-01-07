
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int ZFS_WRITTEN_PROP_PREFIX_LEN ;
 int sprintf (char*,char*,char const*,char const*) ;
 int * strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 int zfs_prop_written (char const*) ;

__attribute__((used)) static void
parse_written_prop(const char *dataset_name, const char *prop_name,
    char *snap_name)
{
 ASSERT(zfs_prop_written(prop_name));
 const char *name = prop_name + ZFS_WRITTEN_PROP_PREFIX_LEN;
 if (strchr(name, '@') == ((void*)0)) {
  (void) sprintf(snap_name, "%s@%s", dataset_name, name);
 } else {
  (void) strcpy(snap_name, name);
 }
}
