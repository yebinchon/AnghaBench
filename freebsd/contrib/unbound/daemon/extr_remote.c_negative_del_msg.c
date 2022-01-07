
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reply_info {scalar_t__ an_numrrsets; int ttl; int flags; } ;
struct lruhash_entry {scalar_t__ data; } ;
struct del_info {int num_msgs; int expired; } ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;

__attribute__((used)) static void
negative_del_msg(struct lruhash_entry* e, void* arg)
{

 struct del_info* inf = (struct del_info*)arg;
 struct reply_info* d = (struct reply_info*)e->data;


 if(FLAGS_GET_RCODE(d->flags) != 0 || d->an_numrrsets == 0) {
  d->ttl = inf->expired;
  inf->num_msgs++;
 }
}
