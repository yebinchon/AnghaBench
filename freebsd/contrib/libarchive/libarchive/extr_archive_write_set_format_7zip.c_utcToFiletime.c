
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;


 scalar_t__ EPOC_TIME ;

__attribute__((used)) static uint64_t
utcToFiletime(time_t t, long ns)
{
 uint64_t fileTime;

 fileTime = t;
 fileTime *= 10000000;
 fileTime += ns / 100;
 fileTime += EPOC_TIME;
 return (fileTime);
}
