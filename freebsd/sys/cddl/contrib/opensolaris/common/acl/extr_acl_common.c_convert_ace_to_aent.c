
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;
typedef int boolean_t ;
typedef int aclent_t ;
typedef int ace_t ;


 int ENOMEM ;
 int cacl_free (int *,int) ;
 int * cacl_realloc (int *,int,int) ;
 int ln_ace_to_aent (int *,int,int ,int ,int **,int*,int **,int*,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
convert_ace_to_aent(ace_t *acebufp, int acecnt, boolean_t isdir,
    uid_t owner, gid_t group, aclent_t **retaclentp, int *retaclcnt)
{
 int error = 0;
 aclent_t *aclentp, *dfaclentp;
 int aclcnt, dfaclcnt;
 int aclsz, dfaclsz;

 error = ln_ace_to_aent(acebufp, acecnt, owner, group,
     &aclentp, &aclcnt, &dfaclentp, &dfaclcnt, isdir);

 if (error)
  return (error);


 if (dfaclcnt != 0) {



  aclsz = sizeof (aclent_t) * aclcnt;
  dfaclsz = sizeof (aclent_t) * dfaclcnt;
  aclentp = cacl_realloc(aclentp, aclsz, aclsz + dfaclsz);
  if (aclentp != ((void*)0)) {
   (void) memcpy(aclentp + aclcnt, dfaclentp, dfaclsz);
  } else {
   error = ENOMEM;
  }
 }

 if (aclentp) {
  *retaclentp = aclentp;
  *retaclcnt = aclcnt + dfaclcnt;
 }

 if (dfaclentp)
  cacl_free(dfaclentp, dfaclsz);

 return (error);
}
