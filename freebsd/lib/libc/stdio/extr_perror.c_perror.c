
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct iovec {char* iov_base; int iov_len; } ;
typedef int msgbuf ;
struct TYPE_4__ {int _flags; int _file; } ;


 int FLOCKFILE_CANCELSAFE (TYPE_1__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int NL_TEXTMAX ;
 int __SOFF ;
 int __sflush (TYPE_1__*) ;
 int _writev (int ,struct iovec*,int) ;
 int errno ;
 TYPE_1__* stderr ;
 int strerror_r (int ,char*,int) ;
 void* strlen (char const*) ;

void
perror(const char *s)
{
 char msgbuf[NL_TEXTMAX];
 struct iovec *v;
 struct iovec iov[4];

 v = iov;
 if (s != ((void*)0) && *s != '\0') {
  v->iov_base = (char *)s;
  v->iov_len = strlen(s);
  v++;
  v->iov_base = ": ";
  v->iov_len = 2;
  v++;
 }
 strerror_r(errno, msgbuf, sizeof(msgbuf));
 v->iov_base = msgbuf;
 v->iov_len = strlen(v->iov_base);
 v++;
 v->iov_base = "\n";
 v->iov_len = 1;
 FLOCKFILE_CANCELSAFE(stderr);
 __sflush(stderr);
 (void)_writev(stderr->_file, iov, (v - iov) + 1);
 stderr->_flags &= ~__SOFF;
 FUNLOCKFILE_CANCELSAFE();
}
