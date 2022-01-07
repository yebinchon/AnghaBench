
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cam_pinfo ;


 scalar_t__ queue_cmp (int **,int,int) ;
 int swap (int **,int,int) ;

__attribute__((used)) static void
heap_up(cam_pinfo **queue_array, int new_index)
{
 int child;
 int parent;

 child = new_index;

 while (child != 1) {

  parent = child >> 1;
  if (queue_cmp(queue_array, parent, child) <= 0)
   break;
  swap(queue_array, parent, child);
  child = parent;
 }
}
