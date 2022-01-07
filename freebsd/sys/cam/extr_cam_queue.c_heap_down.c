
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cam_pinfo ;


 scalar_t__ queue_cmp (int **,int,int) ;
 int swap (int **,int,int) ;

__attribute__((used)) static void
heap_down(cam_pinfo **queue_array, int index, int num_entries)
{
 int child;
 int parent;

 parent = index;
 child = parent << 1;
 for (; child <= num_entries; child = parent << 1) {

  if (child < num_entries) {

   if (queue_cmp(queue_array, child + 1, child) < 0)
    child++;
  }

  if (queue_cmp(queue_array, parent, child) <= 0)
   break;
  swap(queue_array, child, parent);
  parent = child;
 }
}
