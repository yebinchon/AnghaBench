
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* dbra_fsname; char const* dbra_oldname; char const* dbra_newname; } ;
typedef TYPE_1__ dsl_bookmark_rename_arg_t ;


 int ZFS_SPACE_CHECK_NORMAL ;
 int dsl_bookmark_rename_check ;
 int dsl_bookmark_rename_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int,int ) ;

int
dsl_bookmark_rename(const char *fsname, const char *oldbmark,
    const char *newbmark)
{
 dsl_bookmark_rename_arg_t dbra;

 dbra.dbra_fsname = fsname;
 dbra.dbra_oldname = oldbmark;
 dbra.dbra_newname = newbmark;

 return (dsl_sync_task(fsname, dsl_bookmark_rename_check,
     dsl_bookmark_rename_sync, &dbra, 1, ZFS_SPACE_CHECK_NORMAL));
}
