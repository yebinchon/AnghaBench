
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int S_ISDIR (int ) ;
 int fileStat (char*,struct stat*) ;
 scalar_t__ mkdir (char*,int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int makeDirectory(
  const char *zFile
){
  char *zCopy = sqlite3_mprintf("%s", zFile);
  int rc = SQLITE_OK;

  if( zCopy==0 ){
    rc = SQLITE_NOMEM;
  }else{
    int nCopy = (int)strlen(zCopy);
    int i = 1;

    while( rc==SQLITE_OK ){
      struct stat sStat;
      int rc2;

      for(; zCopy[i]!='/' && i<nCopy; i++);
      if( i==nCopy ) break;
      zCopy[i] = '\0';

      rc2 = fileStat(zCopy, &sStat);
      if( rc2!=0 ){
        if( mkdir(zCopy, 0777) ) rc = SQLITE_ERROR;
      }else{
        if( !S_ISDIR(sStat.st_mode) ) rc = SQLITE_ERROR;
      }
      zCopy[i] = '/';
      i++;
    }

    sqlite3_free(zCopy);
  }

  return rc;
}
