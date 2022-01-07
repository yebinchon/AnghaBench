
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;



__attribute__((used)) static int64_t
ldns_serial_arithmitics_time(int32_t time, time_t now)
{
 int32_t offset = time - (int32_t) now;
 return (int64_t) now + offset;
}
