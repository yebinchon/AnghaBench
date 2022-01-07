
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {char* f_mntfromname; int f_mntonname; } ;
typedef int mode_t ;


 int MNT_NOWAIT ;
 scalar_t__ S_ISCHR (int ) ;
 int _PATH_DEV ;
 int getmntinfo (struct statfs**,int ) ;
 int strcmp (char const*,char const*) ;
 size_t strlen (int ) ;
 int strncmp (char const*,int ,size_t) ;
 int warn (char*) ;
 int warnx (char*,char const*,int ) ;

__attribute__((used)) static int
check_mounted(const char *fname, mode_t mode)
{
    struct statfs *mp;
    const char *s1, *s2;
    size_t len;
    int n, r;

    if (!(n = getmntinfo(&mp, MNT_NOWAIT))) {
 warn("getmntinfo");
 return -1;
    }
    len = strlen(_PATH_DEV);
    s1 = fname;
    if (!strncmp(s1, _PATH_DEV, len))
 s1 += len;
    r = S_ISCHR(mode) && s1 != fname && *s1 == 'r';
    for (; n--; mp++) {
 s2 = mp->f_mntfromname;
 if (!strncmp(s2, _PATH_DEV, len))
     s2 += len;
 if ((r && s2 != mp->f_mntfromname && !strcmp(s1 + 1, s2)) ||
     !strcmp(s1, s2)) {
     warnx("%s is mounted on %s", fname, mp->f_mntonname);
     return -1;
 }
    }
    return 0;
}
