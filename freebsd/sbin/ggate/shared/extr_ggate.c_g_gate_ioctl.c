
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_GATE_CTL_NAME ;
 int errno ;
 int g_gate_devfd ;
 int g_gate_xlog (char*,int ,int ,int ) ;
 int getprogname () ;
 int ioctl (int ,unsigned long,void*) ;
 int strerror (int ) ;

void
g_gate_ioctl(unsigned long req, void *data)
{

 if (ioctl(g_gate_devfd, req, data) == -1) {
  g_gate_xlog("%s: ioctl(/dev/%s): %s.", getprogname(),
      G_GATE_CTL_NAME, strerror(errno));
 }
}
