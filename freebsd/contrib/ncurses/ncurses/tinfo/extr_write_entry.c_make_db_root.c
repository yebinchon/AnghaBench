
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int fullpath ;
typedef int DB ;


 int PATH_MAX ;
 int R_OK ;
 int S_ISDIR (int ) ;
 int TRUE ;
 int W_OK ;
 int X_OK ;
 scalar_t__ _nc_access (char const*,int) ;
 scalar_t__ _nc_db_close (int *) ;
 int * _nc_db_open (char*,int ) ;
 int make_db_path (char*,char const*,int) ;
 int mkdir (char const*,int) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static int
make_db_root(const char *path)
{
    int rc;
    char fullpath[PATH_MAX];

    if ((rc = make_db_path(fullpath, path, sizeof(fullpath))) == 0) {
 struct stat statbuf;

 if ((rc = stat(path, &statbuf)) < 0) {
     rc = mkdir(path

         ,0777

  );
 } else if (_nc_access(path, R_OK | W_OK | X_OK) < 0) {
     rc = -1;
 } else if (!(S_ISDIR(statbuf.st_mode))) {
     rc = -1;
 }

    }
    return rc;
}
