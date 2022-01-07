
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* acl_t ;
struct TYPE_10__ {int acl_cnt; } ;
struct TYPE_11__ {TYPE_1__ ats_acl; } ;




 int EINVAL ;
 int _acl_brand (TYPE_2__* const) ;
 int _acl_differs (TYPE_2__* const,TYPE_2__*) ;
 TYPE_2__* _nfs4_acl_strip_np (TYPE_2__* const,int) ;
 int acl_free (TYPE_2__*) ;
 int errno ;

int
acl_is_trivial_np(const acl_t aclp, int *trivialp)
{
 acl_t tmpacl;
 int differs;

 if (aclp == ((void*)0) || trivialp == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 switch (_acl_brand(aclp)) {
 case 128:
  if (aclp->ats_acl.acl_cnt == 3)
   *trivialp = 1;
  else
   *trivialp = 0;

  return (0);

 case 129:




  if (aclp->ats_acl.acl_cnt > 6) {
   *trivialp = 0;
   return (0);
  }





  tmpacl = _nfs4_acl_strip_np(aclp, 0);
  if (tmpacl == ((void*)0))
   return (-1);

  differs = _acl_differs(aclp, tmpacl);
  acl_free(tmpacl);

  if (differs == 0) {
   *trivialp = 1;
   return (0);
  }




  tmpacl = _nfs4_acl_strip_np(aclp, 1);
  if (tmpacl == ((void*)0))
   return (-1);

  differs = _acl_differs(aclp, tmpacl);
  acl_free(tmpacl);

  if (differs)
   *trivialp = 0;
  else
   *trivialp = 1;

  return (0);

 default:
  errno = EINVAL;
  return (-1);
 }
}
