
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct ClearToken {scalar_t__ EndTimestamp; scalar_t__ BeginTimestamp; } ;


 scalar_t__ ODD (scalar_t__) ;

void
_kafs_fixup_viceid(struct ClearToken *ct, uid_t uid)
{
    if (uid != 0)
    {
 if (!((ct->EndTimestamp - ct->BeginTimestamp) & 1))
     ct->EndTimestamp--;
    }
    else
    {
 if (((ct->EndTimestamp - ct->BeginTimestamp) & 1))
     ct->EndTimestamp--;
    }
}
