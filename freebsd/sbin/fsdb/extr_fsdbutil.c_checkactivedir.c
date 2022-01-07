
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int DIP (int ,int ) ;
 int IFDIR ;
 int IFMT ;
 int curinode ;
 scalar_t__ curinum ;
 int di_mode ;
 int warnx (char*,...) ;

int
checkactivedir(void)
{
    if (!curinode) {
 warnx("no current inode\n");
 return 0;
    }
    if ((DIP(curinode, di_mode) & IFMT) != IFDIR) {
 warnx("inode %ju not a directory", (uintmax_t)curinum);
 return 0;
    }
    return 1;
}
