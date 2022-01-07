
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ B_FALSE ;
 int CE_NOTE ;
 scalar_t__ L2ARC_WRITE_SIZE ;
 scalar_t__ arc_warm ;
 int cmn_err (int ,char*,scalar_t__) ;
 scalar_t__ l2arc_write_boost ;
 scalar_t__ l2arc_write_max ;

__attribute__((used)) static uint64_t
l2arc_write_size(void)
{
 uint64_t size;





 size = l2arc_write_max;
 if (size == 0) {
  cmn_err(CE_NOTE, "Bad value for l2arc_write_max, value must "
      "be greater than zero, resetting it to the default (%d)",
      L2ARC_WRITE_SIZE);
  size = l2arc_write_max = L2ARC_WRITE_SIZE;
 }

 if (arc_warm == B_FALSE)
  size += l2arc_write_boost;

 return (size);

}
