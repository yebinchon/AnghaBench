
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int sbintime_t ;
typedef int hrtime_t ;


 int NANOSEC ;

__attribute__((used)) static sbintime_t
nsec_to_sbt(hrtime_t nsec)
{
 time_t sec;





 sec = nsec / NANOSEC;
 nsec = nsec % NANOSEC;
 return (((sbintime_t)sec << 32) | ((sbintime_t)nsec << 32) / NANOSEC);
}
