
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aumask ;
typedef int au_mask_t ;


 int ADE_AUDITON ;
 int ADE_NOERR ;
 int ADE_PARSE ;
 int NA_EVENT_STR_SIZE ;
 scalar_t__ audit_set_kmask (int *,int) ;
 scalar_t__ getacna (char*,int) ;
 scalar_t__ getauditflagsbin (char*,int *) ;

int
auditd_set_namask(void)
{
 au_mask_t aumask;
 char naeventstr[NA_EVENT_STR_SIZE];

 if (getacna(naeventstr, NA_EVENT_STR_SIZE) != 0 ||
     getauditflagsbin(naeventstr, &aumask) != 0)
  return (ADE_PARSE);

 if (audit_set_kmask(&aumask, sizeof(aumask)) != 0)
  return (ADE_AUDITON);

 return (ADE_NOERR);
}
