
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct stat {int st_mode; int st_gid; int st_uid; } ;
typedef int mode_t ;
typedef int gid_t ;


 int SQLITE_IOERR_FSTAT ;
 int SQLITE_OK ;
 scalar_t__ osStat (char const*,struct stat*) ;

__attribute__((used)) static int getFileMode(
  const char *zFile,
  mode_t *pMode,
  uid_t *pUid,
  gid_t *pGid
){
  struct stat sStat;
  int rc = SQLITE_OK;
  if( 0==osStat(zFile, &sStat) ){
    *pMode = sStat.st_mode & 0777;
    *pUid = sStat.st_uid;
    *pGid = sStat.st_gid;
  }else{
    rc = SQLITE_IOERR_FSTAT;
  }
  return rc;
}
