
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct bsm_errno {scalar_t__ be_local_errno; char const* be_strerror; } ;


 scalar_t__ ERRNO_NO_LOCAL_MAPPING ;
 struct bsm_errno* bsm_lookup_errno_bsm (int ) ;
 char const* strerror (scalar_t__) ;

const char *
au_strerror(u_char bsm_errno)
{
 const struct bsm_errno *bsme;

 bsme = bsm_lookup_errno_bsm(bsm_errno);
 if (bsme == ((void*)0))
  return ("Unrecognized BSM error");
 if (bsme->be_local_errno != ERRNO_NO_LOCAL_MAPPING)
  return (strerror(bsme->be_local_errno));
 return (bsme->be_strerror);
}
