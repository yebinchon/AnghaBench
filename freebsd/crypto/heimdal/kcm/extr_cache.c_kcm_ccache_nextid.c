
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int pid_t ;
typedef int gid_t ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int asprintf (char**,char*,long,unsigned int) ;
 int ccache_mutex ;
 unsigned int ccache_nextid ;

char *kcm_ccache_nextid(pid_t pid, uid_t uid, gid_t gid)
{
    unsigned n;
    char *name;

    HEIMDAL_MUTEX_lock(&ccache_mutex);
    n = ++ccache_nextid;
    HEIMDAL_MUTEX_unlock(&ccache_mutex);

    asprintf(&name, "%ld:%u", (long)uid, n);

    return name;
}
