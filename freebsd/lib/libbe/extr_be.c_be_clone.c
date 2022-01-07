
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct libbe_deep_clone {char const* bename; char* snapname; int depth_limit; scalar_t__ depth; TYPE_1__* lbh; } ;
struct TYPE_7__ {int lzh; } ;
typedef TYPE_1__ libbe_handle_t ;


 int BE_ERR_UNKNOWN ;
 int BE_MAXPATHLEN ;
 int ZFS_TYPE_DATASET ;
 int be_clone_cb (int *,struct libbe_deep_clone*) ;
 int be_root_concat (TYPE_1__*,char const*,char*) ;
 int be_validate_name (TYPE_1__*,char const*) ;
 int be_validate_snap (TYPE_1__*,char*) ;
 int free (char*) ;
 int set_error (TYPE_1__*,int) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int * zfs_open (int ,char*,int ) ;

__attribute__((used)) static int
be_clone(libbe_handle_t *lbh, const char *bename, const char *snapshot, int depth)
{
 int err;
 char snap_path[BE_MAXPATHLEN];
 char *parentname, *snapname;
 zfs_handle_t *parent_hdl;
 struct libbe_deep_clone ldc;


 if ((err = be_validate_name(lbh, bename)) != 0)
  return (set_error(lbh, err));





 if ((err = be_root_concat(lbh, snapshot, snap_path)) != 0)
  return (set_error(lbh, err));


 if ((err = be_validate_snap(lbh, snap_path)) != 0)
  return (set_error(lbh, err));


 if ((parentname = strdup(snap_path)) == ((void*)0))
  return (set_error(lbh, BE_ERR_UNKNOWN));


 snapname = strchr(parentname, '@');
 if (snapname == ((void*)0)) {
  free(parentname);
  return (set_error(lbh, BE_ERR_UNKNOWN));
 }
 *snapname = '\0';
 snapname++;


        ldc.lbh = lbh;
        ldc.bename = bename;
        ldc.snapname = snapname;
 ldc.depth = 0;
 ldc.depth_limit = depth;


 parent_hdl = zfs_open(lbh->lzh, parentname, ZFS_TYPE_DATASET);


 err = be_clone_cb(parent_hdl, &ldc);

 free(parentname);
 return (set_error(lbh, err));
}
