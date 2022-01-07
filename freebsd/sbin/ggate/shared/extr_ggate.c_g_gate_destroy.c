
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_ctl_destroy {int gctl_unit; int gctl_force; int gctl_version; } ;


 int G_GATE_CMD_DESTROY ;
 int G_GATE_VERSION ;
 int g_gate_ioctl (int ,struct g_gate_ctl_destroy*) ;

void
g_gate_destroy(int unit, int force)
{
 struct g_gate_ctl_destroy ggio;

 ggio.gctl_version = G_GATE_VERSION;
 ggio.gctl_unit = unit;
 ggio.gctl_force = force;
 g_gate_ioctl(G_GATE_CMD_DESTROY, &ggio);
}
