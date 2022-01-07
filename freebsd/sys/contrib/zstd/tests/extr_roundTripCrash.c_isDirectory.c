
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct _stat64 {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 int _S_IFDIR ;
 int _stat64 (char const*,struct _stat64*) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static int isDirectory(const char* infilename)
{
    int r;





    struct stat statbuf;
    r = stat(infilename, &statbuf);
    if (!r && S_ISDIR(statbuf.st_mode)) return 1;

    return 0;
}
