
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* heim_icred ;
typedef int gid_t ;
struct TYPE_3__ {int gid; } ;



gid_t
heim_ipc_cred_get_gid(heim_icred cred)
{
    return cred->gid;
}
