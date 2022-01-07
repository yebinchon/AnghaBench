
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int ib_net64_t ;


 scalar_t__ OSM_VENDOR_ID_OPENIB ;
 int cl_hton64 (int) ;

__attribute__((used)) static ib_net64_t sm_assigned_guid(uint8_t assigned_byte)
{
 static uint32_t uniq_count;

 if (++uniq_count == 0) {
  uniq_count--;
  return 0;
 }
 return cl_hton64(((uint64_t) uniq_count) |
    (((uint64_t) assigned_byte) << 32) |
    (((uint64_t) OSM_VENDOR_ID_OPENIB) << 40));
}
