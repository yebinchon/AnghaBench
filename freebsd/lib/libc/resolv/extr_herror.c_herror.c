
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {char* iov_base; int iov_len; } ;


 int DE_CONST (char const*,char*) ;
 int STDERR_FILENO ;
 int * __h_errno () ;
 int _writev (int ,struct iovec*,int) ;
 char* hstrerror (int ) ;
 void* strlen (char*) ;

void
herror(const char *s) {
 struct iovec iov[4], *v = iov;
 char *t;

 if (s != ((void*)0) && *s != '\0') {
  DE_CONST(s, t);
  v->iov_base = t;
  v->iov_len = strlen(t);
  v++;
  DE_CONST(": ", t);
  v->iov_base = t;
  v->iov_len = 2;
  v++;
 }
 DE_CONST(hstrerror(*__h_errno()), t);
 v->iov_base = t;
 v->iov_len = strlen(v->iov_base);
 v++;
 DE_CONST("\n", t);
 v->iov_base = t;
 v->iov_len = 1;
 _writev(STDERR_FILENO, iov, (v - iov) + 1);
}
