
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sshpam_maxtries_reached ;

int
sshpam_get_maxtries_reached(void)
{
 return sshpam_maxtries_reached;
}
