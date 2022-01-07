
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int progress_flush (int) ;
 int progress_started ;

extern void
message_progress_end(bool success)
{
 assert(progress_started);
 progress_flush(success);
 progress_started = 0;
 return;
}
