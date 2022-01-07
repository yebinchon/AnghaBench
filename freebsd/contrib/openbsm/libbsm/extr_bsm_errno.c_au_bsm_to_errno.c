
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct bsm_errno {int be_local_errno; } ;


 int ERRNO_NO_LOCAL_MAPPING ;
 struct bsm_errno* bsm_lookup_errno_bsm (int ) ;

int
au_bsm_to_errno(u_char bsm_errno, int *errorp)
{
 const struct bsm_errno *bsme;

 bsme = bsm_lookup_errno_bsm(bsm_errno);
 if (bsme == ((void*)0) || bsme->be_local_errno == ERRNO_NO_LOCAL_MAPPING)
  return (-1);
 *errorp = bsme->be_local_errno;
 return (0);
}
