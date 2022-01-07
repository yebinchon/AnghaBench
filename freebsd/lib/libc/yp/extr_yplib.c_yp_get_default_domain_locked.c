
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YPERR_NODOM ;
 char* _yp_domain ;
 scalar_t__ getdomainname (char*,int) ;

__attribute__((used)) static int
yp_get_default_domain_locked(char **domp)
{
 *domp = ((void*)0);
 if (_yp_domain[0] == '\0')
  if (getdomainname(_yp_domain, sizeof _yp_domain))
   return (YPERR_NODOM);
 *domp = _yp_domain;
 return (0);
}
