
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int lzma_stream ;


 scalar_t__ V_VERBOSE ;
 int alarm (int) ;
 int expected_in_size ;
 scalar_t__ progress_automatic ;
 int progress_needs_updating ;
 int progress_next_update ;
 int progress_started ;
 int * progress_strm ;
 scalar_t__ verbosity ;

extern void
message_progress_start(lzma_stream *strm, uint64_t in_size)
{


 progress_strm = strm;





 expected_in_size = in_size;



 progress_started = 1;



 if (verbosity >= V_VERBOSE && progress_automatic) {
  progress_needs_updating = 1;
  progress_next_update = 1000;

 }

 return;
}
