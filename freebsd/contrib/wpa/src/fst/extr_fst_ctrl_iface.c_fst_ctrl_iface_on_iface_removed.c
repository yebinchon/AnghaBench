
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_iface {int dummy; } ;


 int FALSE ;
 int fst_ctrl_iface_on_iface_state_changed (struct fst_iface*,int ) ;

__attribute__((used)) static void fst_ctrl_iface_on_iface_removed(struct fst_iface *i)
{
 fst_ctrl_iface_on_iface_state_changed(i, FALSE);
}
