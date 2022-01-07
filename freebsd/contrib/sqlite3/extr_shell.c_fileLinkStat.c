
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int lstat (char const*,struct stat*) ;
 int statTimesToUtc (char const*,struct stat*) ;

__attribute__((used)) static int fileLinkStat(
  const char *zPath,
  struct stat *pStatBuf
){





  return lstat(zPath, pStatBuf);

}
