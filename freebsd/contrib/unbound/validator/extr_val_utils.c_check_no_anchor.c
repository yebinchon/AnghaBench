
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int lock; } ;


 struct trust_anchor* anchors_lookup (struct val_anchors*,int *,size_t,int ) ;
 int lock_basic_unlock (int *) ;

__attribute__((used)) static int
check_no_anchor(struct val_anchors* anchors, uint8_t* nm, size_t l, uint16_t c)
{
 struct trust_anchor* ta;
 if((ta=anchors_lookup(anchors, nm, l, c))) {
  lock_basic_unlock(&ta->lock);
 }
 return !ta;
}
