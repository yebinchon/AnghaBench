
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ am_failure; scalar_t__ am_success; } ;
typedef TYPE_1__ au_mask_t ;


 int ADDMASK (TYPE_1__*,TYPE_1__*) ;
 int MAX_AUDITSTRING_LEN ;
 int SUBMASK (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ getacflg (char*,int ) ;
 scalar_t__ getauditflagsbin (char*,TYPE_1__*) ;

int
getfauditflags(au_mask_t *usremask, au_mask_t *usrdmask, au_mask_t *lastmask)
{
 char auditstring[MAX_AUDITSTRING_LEN + 1];

 if ((usremask == ((void*)0)) || (usrdmask == ((void*)0)) || (lastmask == ((void*)0)))
  return (-1);

 lastmask->am_success = 0;
 lastmask->am_failure = 0;


 if (getacflg(auditstring, MAX_AUDITSTRING_LEN) == 0) {
  if (getauditflagsbin(auditstring, lastmask) != 0)
   return (-1);
 }

 ADDMASK(lastmask, usremask);
 SUBMASK(lastmask, usrdmask);

 return (0);
}
