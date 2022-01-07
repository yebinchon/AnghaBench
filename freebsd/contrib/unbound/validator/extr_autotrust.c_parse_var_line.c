
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef void* time_t ;
struct val_anchors {int lock; TYPE_1__* autr; } ;
struct trust_anchor {int lock; TYPE_2__* autr; } ;
struct TYPE_4__ {void* retry_time; void* query_interval; scalar_t__ query_failed; int pnode; void* next_probe_time; void* last_success; void* last_queried; } ;
struct TYPE_3__ {int probe; } ;


 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*) ;
 struct trust_anchor* parse_id (struct val_anchors*,char*) ;
 scalar_t__ parse_int (char*,int*) ;
 int rbtree_delete (int *,struct trust_anchor*) ;
 int rbtree_insert (int *,int *) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
parse_var_line(char* line, struct val_anchors* anchors,
 struct trust_anchor** anchor)
{
 struct trust_anchor* tp = *anchor;
 int r = 0;
 if(strncmp(line, ";;id: ", 6) == 0) {
  *anchor = parse_id(anchors, line+6);
  if(!*anchor) return -1;
  else return 1;
 } else if(strncmp(line, ";;REVOKED", 9) == 0) {
  if(tp) {
   log_err("REVOKED statement must be at start of file");
   return -1;
  }
  return 2;
 } else if(strncmp(line, ";;last_queried: ", 16) == 0) {
  if(!tp) return -1;
  lock_basic_lock(&tp->lock);
  tp->autr->last_queried = (time_t)parse_int(line+16, &r);
  lock_basic_unlock(&tp->lock);
 } else if(strncmp(line, ";;last_success: ", 16) == 0) {
  if(!tp) return -1;
  lock_basic_lock(&tp->lock);
  tp->autr->last_success = (time_t)parse_int(line+16, &r);
  lock_basic_unlock(&tp->lock);
 } else if(strncmp(line, ";;next_probe_time: ", 19) == 0) {
  if(!tp) return -1;
  lock_basic_lock(&anchors->lock);
  lock_basic_lock(&tp->lock);
  (void)rbtree_delete(&anchors->autr->probe, tp);
  tp->autr->next_probe_time = (time_t)parse_int(line+19, &r);
  (void)rbtree_insert(&anchors->autr->probe, &tp->autr->pnode);
  lock_basic_unlock(&tp->lock);
  lock_basic_unlock(&anchors->lock);
 } else if(strncmp(line, ";;query_failed: ", 16) == 0) {
  if(!tp) return -1;
  lock_basic_lock(&tp->lock);
  tp->autr->query_failed = (uint8_t)parse_int(line+16, &r);
  lock_basic_unlock(&tp->lock);
 } else if(strncmp(line, ";;query_interval: ", 18) == 0) {
  if(!tp) return -1;
  lock_basic_lock(&tp->lock);
  tp->autr->query_interval = (time_t)parse_int(line+18, &r);
  lock_basic_unlock(&tp->lock);
 } else if(strncmp(line, ";;retry_time: ", 14) == 0) {
  if(!tp) return -1;
  lock_basic_lock(&tp->lock);
  tp->autr->retry_time = (time_t)parse_int(line+14, &r);
  lock_basic_unlock(&tp->lock);
 }
 return r;
}
