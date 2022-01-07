
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int LIST_REMOVE (struct pthread*,int ) ;
 int hle ;

void
_thr_hash_remove(struct pthread *thread)
{
 LIST_REMOVE(thread, hle);
}
