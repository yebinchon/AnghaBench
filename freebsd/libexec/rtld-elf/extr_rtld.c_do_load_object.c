
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct statfs {int f_flags; char* f_mntonname; } ;
struct stat {int dummy; } ;
struct TYPE_10__ {char* path; int mapsize; int dlopened; int mapbase; scalar_t__ textrel; int stack_flags; scalar_t__ z_noopen; int dynsymcount; int valid_hash_gnu; int valid_hash_sysv; } ;
typedef TYPE_1__ Obj_Entry ;


 int LD_UTRACE (int ,TYPE_1__*,int ,int,int ,char*) ;
 int MNT_NOEXEC ;
 int RTLD_LO_DLOPEN ;
 int RTLD_LO_TRACE ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int UTRACE_LOAD_OBJECT ;
 int _rtld_error (char*,char*) ;
 scalar_t__ dangerous_ld_env ;
 int dbg (char*,char*,...) ;
 int digest_dynamic (TYPE_1__*,int ) ;
 scalar_t__ fstatfs (int,struct statfs*) ;
 int linkmap_add (TYPE_1__*) ;
 TYPE_1__* map_object (int,char*,struct stat*) ;
 int max_stack_flags ;
 int munmap (int ,int) ;
 int next ;
 int obj_count ;
 int obj_free (TYPE_1__*) ;
 int obj_list ;
 int obj_loads ;
 int object_add_name (TYPE_1__*,char const*) ;
 char* printable_path (char*) ;

__attribute__((used)) static Obj_Entry *
do_load_object(int fd, const char *name, char *path, struct stat *sbp,
  int flags)
{
    Obj_Entry *obj;
    struct statfs fs;





    if (dangerous_ld_env) {
 if (fstatfs(fd, &fs) != 0) {
     _rtld_error("Cannot fstatfs \"%s\"", printable_path(path));
     return ((void*)0);
 }
 if (fs.f_flags & MNT_NOEXEC) {
     _rtld_error("Cannot execute objects on %s", fs.f_mntonname);
     return ((void*)0);
 }
    }
    dbg("loading \"%s\"", printable_path(path));
    obj = map_object(fd, printable_path(path), sbp);
    if (obj == ((void*)0))
        return ((void*)0);





    if (name != ((void*)0))
 object_add_name(obj, name);
    obj->path = path;
    digest_dynamic(obj, 0);
    dbg("%s valid_hash_sysv %d valid_hash_gnu %d dynsymcount %d", obj->path,
 obj->valid_hash_sysv, obj->valid_hash_gnu, obj->dynsymcount);
    if (obj->z_noopen && (flags & (RTLD_LO_DLOPEN | RTLD_LO_TRACE)) ==
      RTLD_LO_DLOPEN) {
 dbg("refusing to load non-loadable \"%s\"", obj->path);
 _rtld_error("Cannot dlopen non-loadable %s", obj->path);
 munmap(obj->mapbase, obj->mapsize);
 obj_free(obj);
 return (((void*)0));
    }

    obj->dlopened = (flags & RTLD_LO_DLOPEN) != 0;
    TAILQ_INSERT_TAIL(&obj_list, obj, next);
    obj_count++;
    obj_loads++;
    linkmap_add(obj);
    max_stack_flags |= obj->stack_flags;

    dbg("  %p .. %p: %s", obj->mapbase,
         obj->mapbase + obj->mapsize - 1, obj->path);
    if (obj->textrel)
 dbg("  WARNING: %s has impure text", obj->path);
    LD_UTRACE(UTRACE_LOAD_OBJECT, obj, obj->mapbase, obj->mapsize, 0,
 obj->path);

    return obj;
}
