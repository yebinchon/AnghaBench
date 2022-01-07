
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 int INVALID ;
 long long LLONG_MAX ;
 long long LLONG_MIN ;
 int TOOLARGE ;
 int TOOSMALL ;
 int errno ;
 long long strtoll (char const*,char**,int) ;

long long
strtonum(const char *numstr, long long minval, long long maxval,
    const char **errstrp)
{
 long long ll = 0;
 char *ep;
 int error = 0;
 struct errval {
  const char *errstr;
  int err;
 } ev[4] = {
  { ((void*)0), 0 },
  { "invalid", EINVAL },
  { "too small", ERANGE },
  { "too large", ERANGE },
 };

 ev[0].err = errno;
 errno = 0;
 if (minval > maxval)
  error = INVALID;
 else {
  ll = strtoll(numstr, &ep, 10);
  if (numstr == ep || *ep != '\0')
   error = INVALID;
  else if ((ll == LLONG_MIN && errno == ERANGE) || ll < minval)
   error = TOOSMALL;
  else if ((ll == LLONG_MAX && errno == ERANGE) || ll > maxval)
   error = TOOLARGE;
 }
 if (errstrp != ((void*)0))
  *errstrp = ev[error].errstr;
 errno = ev[error].err;
 if (error)
  ll = 0;

 return (ll);
}
