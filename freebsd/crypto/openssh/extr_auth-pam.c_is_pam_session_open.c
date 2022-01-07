
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sshpam_session_open ;

int
is_pam_session_open(void)
{
 return sshpam_session_open;
}
