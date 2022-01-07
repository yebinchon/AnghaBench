
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int pfd ;

__attribute__((used)) static int ipcap_close()
{
 return close(pfd);
}
