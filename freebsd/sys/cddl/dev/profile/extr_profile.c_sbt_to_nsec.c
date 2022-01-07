
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sbintime_t ;
typedef int hrtime_t ;


 int NANOSEC ;

__attribute__((used)) static hrtime_t
sbt_to_nsec(sbintime_t sbt)
{

 return ((sbt >> 32) * NANOSEC +
     (((uint32_t)sbt * (hrtime_t)NANOSEC) >> 32));
}
