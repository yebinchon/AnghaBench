
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iconv_hooks {int dummy; } ;
struct _citrus_iconv {TYPE_1__* cv_shared; } ;
typedef scalar_t__ iconv_t ;
struct TYPE_2__ {char* ci_convname; int ci_discard_ilseq; int ci_ilseq_invalid; struct iconv_hooks* ci_hooks; } ;


 int EBADF ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ ISBADF (scalar_t__) ;
 int errno ;
 int memcmp (char const*,char*,size_t) ;
 char* strchr (char const*,char) ;
 size_t strlen (char*) ;

int
__bsd_iconvctl(iconv_t cd, int request, void *argument)
{
 struct _citrus_iconv *cv;
 struct iconv_hooks *hooks;
 const char *convname;
 char *dst;
 int *i;
 size_t srclen;

 cv = (struct _citrus_iconv *)(void *)cd;
 hooks = (struct iconv_hooks *)argument;
 i = (int *)argument;

 if (ISBADF(cd)) {
  errno = EBADF;
  return (-1);
 }

 switch (request) {
 case 128:
  convname = cv->cv_shared->ci_convname;
  dst = strchr(convname, '/');
  srclen = dst - convname;
  dst++;
  *i = (srclen == strlen(dst)) && !memcmp(convname, dst, srclen);
  return (0);
 case 134:
  *i = 1;
  return (0);
 case 129:
  return ((*i == 1) ? 0 : -1);
 case 136:
  *i = cv->cv_shared->ci_discard_ilseq ? 1 : 0;
  return (0);
 case 133:
  cv->cv_shared->ci_discard_ilseq = *i;
  return (0);
 case 131:
  cv->cv_shared->ci_hooks = hooks;
  return (0);
 case 132:
  errno = EOPNOTSUPP;
  return (-1);
 case 135:
  *i = cv->cv_shared->ci_ilseq_invalid ? 1 : 0;
  return (0);
 case 130:
  cv->cv_shared->ci_ilseq_invalid = *i;
  return (0);
 default:
  errno = EINVAL;
  return (-1);
 }
}
