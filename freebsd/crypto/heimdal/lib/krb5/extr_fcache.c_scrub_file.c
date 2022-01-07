
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
typedef int buf ;


 int SEEK_END ;
 int SEEK_SET ;
 int _commit (int) ;
 int errno ;
 int fsync (int) ;
 scalar_t__ lseek (int,int ,int ) ;
 int memset (char*,int ,int) ;
 int min (scalar_t__,scalar_t__) ;
 scalar_t__ write (int,char*,int ) ;

__attribute__((used)) static int
scrub_file (int fd)
{
    off_t pos;
    char buf[128];

    pos = lseek(fd, 0, SEEK_END);
    if (pos < 0)
        return errno;
    if (lseek(fd, 0, SEEK_SET) < 0)
        return errno;
    memset(buf, 0, sizeof(buf));
    while(pos > 0) {
        ssize_t tmp = write(fd, buf, min((off_t)sizeof(buf), pos));

 if (tmp < 0)
     return errno;
 pos -= tmp;
    }



    fsync (fd);

    return 0;
}
