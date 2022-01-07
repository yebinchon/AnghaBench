
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_USER_MAD_UNREGISTER_AGENT ;
 int TRACE (char*,int,int) ;
 int ioctl (int,int ,int*) ;

int umad_unregister(int fd, int agentid)
{
 TRACE("fd %d unregistering agent %d", fd, agentid);
 return ioctl(fd, IB_USER_MAD_UNREGISTER_AGENT, &agentid);
}
