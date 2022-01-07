
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_hash_head {int dummy; } ;
struct pthread {int dummy; } ;


 int LIST_INSERT_HEAD (struct thread_hash_head*,struct pthread*,int ) ;
 size_t THREAD_HASH (struct pthread*) ;
 int hle ;
 struct thread_hash_head* thr_hashtable ;

void
_thr_hash_add(struct pthread *thread)
{
 struct thread_hash_head *head;

 head = &thr_hashtable[THREAD_HASH(thread)];
 LIST_INSERT_HEAD(head, thread, hle);
}
