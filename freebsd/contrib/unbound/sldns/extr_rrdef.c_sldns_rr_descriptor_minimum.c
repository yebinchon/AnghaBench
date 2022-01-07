
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t _minimum; } ;
typedef TYPE_1__ sldns_rr_descriptor ;



size_t
sldns_rr_descriptor_minimum(const sldns_rr_descriptor *descriptor)
{
 if (descriptor) {
  return descriptor->_minimum;
 } else {
  return 0;
 }
}
