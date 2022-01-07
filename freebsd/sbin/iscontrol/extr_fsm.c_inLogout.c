
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trans_t ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ isess_t ;


 int SESS_RECONNECT ;
 int T18 ;

__attribute__((used)) static trans_t
inLogout(isess_t *sess)
{
     if(sess->flags & SESS_RECONNECT)
   return T18;
     return 0;
}
