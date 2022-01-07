
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int path ;
typedef int mode_t ;
struct TYPE_3__ {int bsize; int ffactor; int nelem; scalar_t__ lorder; int * hash; scalar_t__ cachesize; } ;
typedef TYPE_1__ HASHINFO ;
typedef int DBM ;


 char const* DBM_SUFFIX ;
 int ENAMETOOLONG ;
 int MAXPATHLEN ;
 scalar_t__ __hash_open (char*,int,int ,TYPE_1__*,int ) ;
 int errno ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

extern DBM *
dbm_open(const char *file, int flags, mode_t mode)
{
 HASHINFO info;
 char path[MAXPATHLEN];

 info.bsize = 4096;
 info.ffactor = 40;
 info.nelem = 1;
 info.cachesize = 0;
 info.hash = ((void*)0);
 info.lorder = 0;

 if( strlen(file) >= sizeof(path) - strlen(DBM_SUFFIX)) {
  errno = ENAMETOOLONG;
  return(((void*)0));
 }
 (void)strcpy(path, file);
 (void)strcat(path, DBM_SUFFIX);
 return ((DBM *)__hash_open(path, flags, mode, &info, 0));
}
