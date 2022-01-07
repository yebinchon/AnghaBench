
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int sa_handle_t ;
typedef int sa_attr_type_t ;
typedef int objset_t ;
typedef int dmu_buf_t ;


 int ASSERT (int) ;
 int ENOENT ;
 int ESTALE ;
 int FTAG ;
 int MASTER_NODE_OBJ ;
 int MAXNAMELEN ;
 int VERIFY0 (int ) ;
 int ZFS_DIRENT_OBJ (unsigned long long) ;
 int ZFS_UNLINKED_SET ;
 int bcopy (char*,char*,size_t) ;
 int memmove (char*,char*,int) ;
 int sprintf (char*,char*) ;
 size_t strlen (char*) ;
 int zap_lookup (int *,int ,int ,int,int,scalar_t__*) ;
 int zap_lookup_int (int *,scalar_t__,scalar_t__) ;
 int zap_value_search (int *,scalar_t__,scalar_t__,int ,char*) ;
 int zfs_grab_sa_handle (int *,scalar_t__,int **,int **,int ) ;
 int zfs_obj_to_pobj (int *,int *,int *,scalar_t__*,int*) ;
 int zfs_release_sa_handle (int *,int *,int ) ;

__attribute__((used)) static int
zfs_obj_to_path_impl(objset_t *osp, uint64_t obj, sa_handle_t *hdl,
    sa_attr_type_t *sa_table, char *buf, int len)
{
 sa_handle_t *sa_hdl;
 sa_handle_t *prevhdl = ((void*)0);
 dmu_buf_t *prevdb = ((void*)0);
 dmu_buf_t *sa_db = ((void*)0);
 char *path = buf + len - 1;
 int error;

 *path = '\0';
 sa_hdl = hdl;

 uint64_t deleteq_obj;
 VERIFY0(zap_lookup(osp, MASTER_NODE_OBJ,
     ZFS_UNLINKED_SET, sizeof (uint64_t), 1, &deleteq_obj));
 error = zap_lookup_int(osp, deleteq_obj, obj);
 if (error == 0) {
  return (ESTALE);
 } else if (error != ENOENT) {
  return (error);
 }
 error = 0;

 for (;;) {
  uint64_t pobj;
  char component[MAXNAMELEN + 2];
  size_t complen;
  int is_xattrdir;

  if (prevdb)
   zfs_release_sa_handle(prevhdl, prevdb, FTAG);

  if ((error = zfs_obj_to_pobj(osp, sa_hdl, sa_table, &pobj,
      &is_xattrdir)) != 0)
   break;

  if (pobj == obj) {
   if (path[0] != '/')
    *--path = '/';
   break;
  }

  component[0] = '/';
  if (is_xattrdir) {
   (void) sprintf(component + 1, "<xattrdir>");
  } else {
   error = zap_value_search(osp, pobj, obj,
       ZFS_DIRENT_OBJ(-1ULL), component + 1);
   if (error != 0)
    break;
  }

  complen = strlen(component);
  path -= complen;
  ASSERT(path >= buf);
  bcopy(component, path, complen);
  obj = pobj;

  if (sa_hdl != hdl) {
   prevhdl = sa_hdl;
   prevdb = sa_db;
  }
  error = zfs_grab_sa_handle(osp, obj, &sa_hdl, &sa_db, FTAG);
  if (error != 0) {
   sa_hdl = prevhdl;
   sa_db = prevdb;
   break;
  }
 }

 if (sa_hdl != ((void*)0) && sa_hdl != hdl) {
  ASSERT(sa_db != ((void*)0));
  zfs_release_sa_handle(sa_hdl, sa_db, FTAG);
 }

 if (error == 0)
  (void) memmove(buf, path, buf + len - path);

 return (error);
}
