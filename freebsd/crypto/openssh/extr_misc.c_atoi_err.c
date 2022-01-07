
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 long long strtonum (char const*,int ,int ,char const**) ;

const char *
atoi_err(const char *nptr, int *val)
{
 const char *errstr = ((void*)0);
 long long num;

 if (nptr == ((void*)0) || *nptr == '\0')
  return "missing";
 num = strtonum(nptr, 0, INT_MAX, &errstr);
 if (errstr == ((void*)0))
  *val = (int)num;
 return errstr;
}
