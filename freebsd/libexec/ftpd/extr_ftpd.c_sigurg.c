
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int recvurg ;

__attribute__((used)) static void
sigurg(int signo)
{

 recvurg = 1;
}
