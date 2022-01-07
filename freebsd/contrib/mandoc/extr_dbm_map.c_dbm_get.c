
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ be32toh (scalar_t__) ;
 void* dbm_base ;
 scalar_t__ max_offset ;
 int warnx (char*,scalar_t__,...) ;

void *
dbm_get(int32_t offset)
{
 offset = be32toh(offset);
 if (offset < 0) {
  warnx("dbm_get: Database corrupt: offset %d", offset);
  return ((void*)0);
 }
 if (offset >= max_offset) {
  warnx("dbm_get: Database corrupt: offset %d > %d",
      offset, max_offset);
  return ((void*)0);
 }
 return dbm_base + offset;
}
