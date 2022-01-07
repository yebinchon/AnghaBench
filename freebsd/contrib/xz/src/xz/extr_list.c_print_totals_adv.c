
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_version; scalar_t__ all_have_sizes; int memusage_max; int stream_padding; int checks; int uncompressed_size; int compressed_size; int blocks; int streams; int files; } ;


 scalar_t__ V_DEBUG ;
 char* _ (char*) ;
 scalar_t__ message_verbosity_get () ;
 int print_adv_helper (int ,int ,int ,int ,int ,int ) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int puts (char*) ;
 int round_up_to_mib (int ) ;
 TYPE_1__ totals ;
 char* uint64_to_str (int ,int ) ;
 char* xz_ver_to_str (int ) ;

__attribute__((used)) static void
print_totals_adv(void)
{
 putchar('\n');
 puts(_("Totals:"));
 printf(_("  Number of files:    %s\n"),
   uint64_to_str(totals.files, 0));
 print_adv_helper(totals.streams, totals.blocks,
   totals.compressed_size, totals.uncompressed_size,
   totals.checks, totals.stream_padding);

 if (message_verbosity_get() >= V_DEBUG) {
  printf(_("  Memory needed:      %s MiB\n"), uint64_to_str(
    round_up_to_mib(totals.memusage_max), 0));
  printf(_("  Sizes in headers:   %s\n"),
    totals.all_have_sizes ? _("Yes") : _("No"));
  printf(_("  Minimum XZ Utils version: %s\n"),
    xz_ver_to_str(totals.min_version));
 }

 return;
}
