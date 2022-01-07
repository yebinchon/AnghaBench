
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;


 int LPRINTF (char*,long) ;
 int adjtime (struct timeval*,long) ;
 scalar_t__ no_set ;
 int perror (char*) ;

__attribute__((used)) static void
adj_time(
  long offset
  )
{
 struct timeval time_offset;

 if (no_set)
     return;

 time_offset.tv_sec = offset / 1000000;
 time_offset.tv_usec = offset % 1000000;

 LPRINTF("adj_time: %ld us ", (long int)offset);
 if (adjtime(&time_offset, 0L) == -1)
     perror("adjtime()");
}
