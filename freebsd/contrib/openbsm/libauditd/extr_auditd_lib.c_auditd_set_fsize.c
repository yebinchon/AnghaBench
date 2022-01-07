
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t af_filesz; } ;
typedef TYPE_1__ au_fstat_t ;
typedef int au_fstat ;


 int ADE_AUDITON ;
 int ADE_NOERR ;
 int ADE_PARSE ;
 scalar_t__ audit_set_fsize (TYPE_1__*,int) ;
 int bzero (TYPE_1__*,int) ;
 scalar_t__ getacfilesz (size_t*) ;

int
auditd_set_fsize(void)
{
 size_t filesz;
 au_fstat_t au_fstat;




 if (getacfilesz(&filesz) != 0)
  return (ADE_PARSE);

 bzero(&au_fstat, sizeof(au_fstat));
 au_fstat.af_filesz = filesz;
 if (audit_set_fsize(&au_fstat, sizeof(au_fstat)) != 0)
  return (ADE_AUDITON);

 return (ADE_NOERR);
}
