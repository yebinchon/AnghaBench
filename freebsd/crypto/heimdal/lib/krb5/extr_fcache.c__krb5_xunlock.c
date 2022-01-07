
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_whence; int l_type; scalar_t__ l_len; scalar_t__ l_start; } ;
typedef int krb5_context ;
typedef int buf ;



 int F_SETLKW ;
 int F_UNLCK ;
 int LOCK_UN ;
 int N_ (char*,char*) ;
 int SEEK_SET ;
 int errno ;
 int fcntl (int,int ,struct flock*) ;
 int flock (int,int ) ;
 int krb5_set_error_message (int ,int,int ,char*) ;
 int rk_strerror_r (int,char*,int) ;

int
_krb5_xunlock(krb5_context context, int fd)
{
    int ret;
    ret = flock(fd, LOCK_UN);

    if (ret < 0)
 ret = errno;
    switch (ret) {
    case 0:
 break;
    case 128:
 ret = 0;
 break;
    default: {
 char buf[128];
 rk_strerror_r(ret, buf, sizeof(buf));
 krb5_set_error_message(context, ret,
          N_("Failed to unlock file: %s", ""), buf);
 break;
    }
    }
    return ret;
}
