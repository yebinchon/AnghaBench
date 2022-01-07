
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct receive_arg {int os; int ignore_objlist; } ;


 int ZIO_PRIORITY_SYNC_READ ;
 int dmu_prefetch (int ,int ,int,int ,int ,int ) ;
 int objlist_exists (int *,int ) ;

__attribute__((used)) static void
receive_read_prefetch(struct receive_arg *ra,
    uint64_t object, uint64_t offset, uint64_t length)
{
 if (!objlist_exists(&ra->ignore_objlist, object)) {
  dmu_prefetch(ra->os, object, 1, offset, length,
      ZIO_PRIORITY_SYNC_READ);
 }
}
