
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CK_RV ;
typedef int * CK_MECHANISM_PTR ;


 int CKR_DEVICE_MEMORY ;
 int CKR_OK ;
 int free (int *) ;
 int * malloc (int) ;
 int memcpy (int *,int * const,int) ;

__attribute__((used)) static CK_RV
dup_mechanism(CK_MECHANISM_PTR *dp, const CK_MECHANISM_PTR pMechanism)
{
    CK_MECHANISM_PTR p;

    p = malloc(sizeof(*p));
    if (p == ((void*)0))
 return CKR_DEVICE_MEMORY;

    if (*dp)
 free(*dp);
    *dp = p;
    memcpy(p, pMechanism, sizeof(*p));

    return CKR_OK;
}
