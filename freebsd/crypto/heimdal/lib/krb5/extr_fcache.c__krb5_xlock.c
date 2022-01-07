
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_whence; int l_type; scalar_t__ l_len; scalar_t__ l_start; } ;
typedef int krb5_context ;
typedef scalar_t__ krb5_boolean ;
typedef int buf ;


 int EACCES ;


 int F_RDLCK ;
 int F_SETLKW ;
 int F_WRLCK ;
 int LOCK_EX ;
 int LOCK_SH ;
 int N_ (char*,char*) ;
 int SEEK_SET ;
 int errno ;
 int fcntl (int,int ,struct flock*) ;
 int flock (int,int ) ;
 int krb5_set_error_message (int ,int,int ,char const*,...) ;
 int rk_strerror_r (int,char*,int) ;

int
_krb5_xlock(krb5_context context, int fd, krb5_boolean exclusive,
     const char *filename)
{
    int ret;
    ret = flock(fd, exclusive ? LOCK_EX : LOCK_SH);

    if(ret < 0)
 ret = errno;
    if(ret == EACCES)
 ret = 129;

    switch (ret) {
    case 0:
 break;
    case 128:
 ret = 0;
 break;
    case 129:
 krb5_set_error_message(context, ret,
          N_("timed out locking cache file %s", "file"),
          filename);
 break;
    default: {
 char buf[128];
 rk_strerror_r(ret, buf, sizeof(buf));
 krb5_set_error_message(context, ret,
          N_("error locking cache file %s: %s",
      "file, error"), filename, buf);
 break;
    }
    }
    return ret;
}
