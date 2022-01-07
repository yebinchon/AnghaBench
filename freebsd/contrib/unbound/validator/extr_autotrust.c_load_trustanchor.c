
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int lock; TYPE_1__* autr; } ;
struct autr_ta {int dummy; } ;
struct TYPE_2__ {scalar_t__ file; } ;


 struct autr_ta* add_trustanchor_frm_str (struct val_anchors*,char*,struct trust_anchor**,int *,size_t,int **,size_t*,int*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*) ;
 int parse_comments (char*,struct autr_ta*) ;
 scalar_t__ strdup (char const*) ;

__attribute__((used)) static struct trust_anchor*
load_trustanchor(struct val_anchors* anchors, char* str, const char* fname,
 uint8_t* origin, size_t origin_len, uint8_t** prev, size_t* prev_len,
 int* skip)
{
 struct autr_ta* ta = ((void*)0);
 struct trust_anchor* tp = ((void*)0);

 ta = add_trustanchor_frm_str(anchors, str, &tp, origin, origin_len,
  prev, prev_len, skip);
 if(!ta)
  return ((void*)0);
 lock_basic_lock(&tp->lock);
 if(!parse_comments(str, ta)) {
  lock_basic_unlock(&tp->lock);
  return ((void*)0);
 }
 if(!tp->autr->file) {
  tp->autr->file = strdup(fname);
  if(!tp->autr->file) {
   lock_basic_unlock(&tp->lock);
   log_err("malloc failure");
   return ((void*)0);
  }
 }
 lock_basic_unlock(&tp->lock);
        return tp;
}
