
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MODE_LIST ;
 scalar_t__ V_VERBOSE ;
 int current_filename_printed ;
 char const* filename ;
 int files_pos ;
 scalar_t__ opt_mode ;
 int print_filename () ;
 scalar_t__ progress_automatic ;
 scalar_t__ verbosity ;

extern void
message_filename(const char *src_name)
{

 ++files_pos;
 filename = src_name;

 if (verbosity >= V_VERBOSE
   && (progress_automatic || opt_mode == MODE_LIST))
  print_filename();
 else
  current_filename_printed = 0;

 return;
}
