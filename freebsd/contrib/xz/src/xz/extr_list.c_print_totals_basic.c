
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int line ;
struct TYPE_2__ {int streams; int blocks; int files; int uncompressed_size; int compressed_size; int checks; } ;


 int CHECKS_STR_SIZE ;
 int NICESTR_B ;
 int NICESTR_TIB ;
 int ULONG_MAX ;
 int get_check_names (char*,int ,int) ;
 char* get_ratio (int ,int ) ;
 int memset (char*,char,int) ;
 char* ngettext (char*,char*,int) ;
 int printf (char*,char*,...) ;
 int puts (char*) ;
 TYPE_1__ totals ;
 char* uint64_to_nicestr (int ,int ,int ,int,int) ;
 char* uint64_to_str (int,int) ;

__attribute__((used)) static void
print_totals_basic(void)
{

 char line[80];
 memset(line, '-', sizeof(line));
 line[sizeof(line) - 1] = '\0';
 puts(line);


 char checks[CHECKS_STR_SIZE];
 get_check_names(checks, totals.checks, 0);



 printf("%5s %7s  %11s  %11s  %5s  %-7s ",
   uint64_to_str(totals.streams, 0),
   uint64_to_str(totals.blocks, 1),
   uint64_to_nicestr(totals.compressed_size,
    NICESTR_B, NICESTR_TIB, 0, 2),
   uint64_to_nicestr(totals.uncompressed_size,
    NICESTR_B, NICESTR_TIB, 0, 3),
   get_ratio(totals.compressed_size,
    totals.uncompressed_size),
   checks);
 printf(ngettext("%s file\n", "%s files\n",
   totals.files <= ULONG_MAX ? totals.files
    : (totals.files % 1000000) + 1000000),
   uint64_to_str(totals.files, 0));

 return;
}
