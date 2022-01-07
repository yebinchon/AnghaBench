
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int pid_t ;
struct TYPE_3__ {int session; scalar_t__ uid; } ;
typedef TYPE_1__ kcm_client ;



int
kcm_is_same_session(kcm_client *client, uid_t uid, pid_t session)
{





 return (client->uid == uid);
}
