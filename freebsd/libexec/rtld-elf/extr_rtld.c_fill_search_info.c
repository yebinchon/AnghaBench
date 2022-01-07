
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fill_search_info_args {scalar_t__ request; char* strspace; struct dl_serpath* serpath; int flags; TYPE_1__* serinfo; } ;
struct dl_serpath {char* dls_name; int dls_flags; } ;
struct TYPE_2__ {int dls_size; int dls_cnt; } ;


 scalar_t__ RTLD_DI_SERINFOSIZE ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static void *
fill_search_info(const char *dir, size_t dirlen, void *param)
{
    struct fill_search_info_args *arg;

    arg = param;

    if (arg->request == RTLD_DI_SERINFOSIZE) {
 arg->serinfo->dls_cnt ++;
 arg->serinfo->dls_size += sizeof(struct dl_serpath) + dirlen + 1;
    } else {
 struct dl_serpath *s_entry;

 s_entry = arg->serpath;
 s_entry->dls_name = arg->strspace;
 s_entry->dls_flags = arg->flags;

 strncpy(arg->strspace, dir, dirlen);
 arg->strspace[dirlen] = '\0';

 arg->strspace += dirlen + 1;
 arg->serpath++;
    }

    return (((void*)0));
}
