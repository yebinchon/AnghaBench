
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int idx; } ;
typedef TYPE_1__ xz_file_info ;
typedef int file_pair ;


 scalar_t__ FORMAT_AUTO ;
 scalar_t__ FORMAT_XZ ;
 scalar_t__ V_WARNING ;
 TYPE_1__ XZ_FILE_INFO_INIT ;
 int _ (char*) ;
 int io_close (int *,int) ;
 int * io_open_src (char const*) ;
 int lzma_index_end (int ,int *) ;
 int message_error (int ) ;
 int message_fatal (int ) ;
 int message_filename (char const*) ;
 scalar_t__ message_verbosity_get () ;
 int opt_force ;
 scalar_t__ opt_format ;
 scalar_t__ opt_robot ;
 int opt_stdout ;
 int parse_indexes (TYPE_1__*,int *) ;
 int print_info_adv (TYPE_1__*,int *) ;
 int print_info_basic (TYPE_1__*,int *) ;
 int print_info_robot (TYPE_1__*,int *) ;
 char const* stdin_filename ;
 int update_totals (TYPE_1__*) ;

extern void
list_file(const char *filename)
{
 if (opt_format != FORMAT_XZ && opt_format != FORMAT_AUTO)
  message_fatal(_("--list works only on .xz files "
    "(--format=xz or --format=auto)"));

 message_filename(filename);

 if (filename == stdin_filename) {
  message_error(_("--list does not support reading from "
    "standard input"));
  return;
 }



 opt_stdout = 0;
 opt_force = 1;
 file_pair *pair = io_open_src(filename);
 if (pair == ((void*)0))
  return;

 xz_file_info xfi = XZ_FILE_INFO_INIT;
 if (!parse_indexes(&xfi, pair)) {
  bool fail;






  if (opt_robot)
   fail = print_info_robot(&xfi, pair);
  else if (message_verbosity_get() <= V_WARNING)
   fail = print_info_basic(&xfi, pair);
  else
   fail = print_info_adv(&xfi, pair);




  if (!fail)
   update_totals(&xfi);

  lzma_index_end(xfi.idx, ((void*)0));
 }

 io_close(pair, 0);
 return;
}
