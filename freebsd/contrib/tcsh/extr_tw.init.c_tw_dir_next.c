
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
struct Strbuf {int dummy; } ;
typedef int DIR ;


 int Strbuf_append (struct Strbuf*,int ) ;
 struct dirent* readdir (int *) ;
 int str2short (int ) ;

__attribute__((used)) static int
tw_dir_next(struct Strbuf *res, DIR *dfd)
{
    struct dirent *dirp;

    if (dfd == ((void*)0))
 return 0;

    if ((dirp = readdir(dfd)) != ((void*)0)) {
 Strbuf_append(res, str2short(dirp->d_name));
 return 1;
    }
    return 0;
}
