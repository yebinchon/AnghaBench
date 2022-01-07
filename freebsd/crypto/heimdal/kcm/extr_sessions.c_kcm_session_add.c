
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int kcm_log (int,char*,int ) ;

void
kcm_session_add(pid_t session_id)
{
    kcm_log(1, "monitor session: %d\n", session_id);
}
