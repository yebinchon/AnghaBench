
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef TYPE_1__* heim_icred ;
struct TYPE_3__ {int uid; } ;



uid_t
heim_ipc_cred_get_uid(heim_icred cred)
{
    return cred->uid;
}
