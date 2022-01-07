
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct fst_iface* new_iface; struct fst_iface* old_iface; } ;
struct fst_session {TYPE_1__ data; } ;
struct fst_iface {int dummy; } ;
typedef scalar_t__ Boolean ;



void fst_session_set_iface(struct fst_session *s, struct fst_iface *iface,
      Boolean is_old)
{
 if (is_old)
  s->data.old_iface = iface;
 else
  s->data.new_iface = iface;

}
