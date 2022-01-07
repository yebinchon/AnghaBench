
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {char const* fsname; } ;



const char *
quota_fsname(const struct quotafile *qf)
{

 return (qf->fsname);
}
