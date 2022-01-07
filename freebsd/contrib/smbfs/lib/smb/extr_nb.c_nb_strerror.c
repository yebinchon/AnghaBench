
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NBERR_ACTIVE ;
 int NBERR_HOSTNOTFOUND ;
 int NBERR_MAX ;
 char const** nb_err ;
 char const** nb_err_rcode ;

const char *
nb_strerror(int error)
{
 if (error == 0)
  return ((void*)0);
 if (error <= NBERR_ACTIVE)
  return nb_err_rcode[error - 1];
 else if (error >= NBERR_HOSTNOTFOUND && error < NBERR_MAX)
  return nb_err[error - NBERR_HOSTNOTFOUND];
 else
  return ((void*)0);
}
