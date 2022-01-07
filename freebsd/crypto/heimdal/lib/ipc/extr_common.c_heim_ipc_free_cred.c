
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_icred ;


 int free (int ) ;

void
heim_ipc_free_cred(heim_icred cred)
{
    free(cred);
}
