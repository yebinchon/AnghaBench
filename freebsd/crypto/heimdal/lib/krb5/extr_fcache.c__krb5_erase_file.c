
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; scalar_t__ st_nlink; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 scalar_t__ ENOENT ;
 scalar_t__ EPERM ;
 int O_BINARY ;
 int O_RDWR ;
 int _krb5_xlock (int ,int,int,char const*) ;
 int _krb5_xunlock (int ,int) ;
 int close (int) ;
 scalar_t__ errno ;
 int fstat (int,struct stat*) ;
 int lstat (char const*,struct stat*) ;
 int open (char const*,int) ;
 int rk_cloexec (int) ;
 int scrub_file (int) ;
 scalar_t__ unlink (char const*) ;

krb5_error_code
_krb5_erase_file(krb5_context context, const char *filename)
{
    int fd;
    struct stat sb1, sb2;
    int ret;

    ret = lstat (filename, &sb1);
    if (ret < 0)
 return errno;

    fd = open(filename, O_RDWR | O_BINARY);
    if(fd < 0) {
 if(errno == ENOENT)
     return 0;
 else
     return errno;
    }
    rk_cloexec(fd);
    ret = _krb5_xlock(context, fd, 1, filename);
    if (ret) {
 close(fd);
 return ret;
    }
    if (unlink(filename) < 0) {
 _krb5_xunlock(context, fd);
        close (fd);
        return errno;
    }
    ret = fstat (fd, &sb2);
    if (ret < 0) {
 _krb5_xunlock(context, fd);
 close (fd);
 return errno;
    }



    if (sb1.st_dev != sb2.st_dev || sb1.st_ino != sb2.st_ino) {
 _krb5_xunlock(context, fd);
 close (fd);
 return EPERM;
    }



    if (sb2.st_nlink != 0) {
 _krb5_xunlock(context, fd);
        close (fd);
        return 0;
    }

    ret = scrub_file (fd);
    if (ret) {
 _krb5_xunlock(context, fd);
 close(fd);
 return ret;
    }
    ret = _krb5_xunlock(context, fd);
    close (fd);
    return ret;
}
