
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpwd_proc {int * name; } ;


 struct kpwd_proc* procs ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static struct kpwd_proc *
find_chpw_proto(const char *name)
{
    struct kpwd_proc *p;
    for (p = procs; p->name != ((void*)0); p++) {
 if (strcmp(p->name, name) == 0)
     return p;
    }
    return ((void*)0);
}
