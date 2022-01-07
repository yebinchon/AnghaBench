
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E_ERROR ;
 int E_SUCCESS ;
 char* PACKAGE_BUGREPORT ;
 char* PACKAGE_NAME ;
 char* PACKAGE_URL ;
 scalar_t__ V_SILENT ;
 char* _ (char*) ;
 int printf (char*,char*,...) ;
 char* progname ;
 int puts (char*) ;
 int tuklib_exit (int ,int ,int) ;
 scalar_t__ verbosity ;

extern void
message_help(bool long_help)
{
 printf(_("Usage: %s [OPTION]... [FILE]...\n"
   "Compress or decompress FILEs in the .xz format.\n\n"),
   progname);



 if (long_help)
  puts(_("Mandatory arguments to long options are mandatory "
    "for short options too.\n"));

 if (long_help)
  puts(_(" Operation mode:\n"));

 puts(_(
"  -z, --compress      force compression\n"
"  -d, --decompress    force decompression\n"
"  -t, --test          test compressed file integrity\n"
"  -l, --list          list information about .xz files"));

 if (long_help)
  puts(_("\n Operation modifiers:\n"));

 puts(_(
"  -k, --keep          keep (don't delete) input files\n"
"  -f, --force         force overwrite of output file and (de)compress links\n"
"  -c, --stdout        write to standard output and don't delete input files"));

 if (long_help) {
  puts(_(
"      --single-stream decompress only the first stream, and silently\n"
"                      ignore possible remaining input data"));
  puts(_(
"      --no-sparse     do not create sparse files when decompressing\n"
"  -S, --suffix=.SUF   use the suffix `.SUF' on compressed files\n"
"      --files[=FILE]  read filenames to process from FILE; if FILE is\n"
"                      omitted, filenames are read from the standard input;\n"
"                      filenames must be terminated with the newline character\n"
"      --files0[=FILE] like --files but use the null character as terminator"));
 }

 if (long_help) {
  puts(_("\n Basic file format and compression options:\n"));
  puts(_(
"  -F, --format=FMT    file format to encode or decode; possible values are\n"
"                      `auto' (default), `xz', `lzma', and `raw'\n"
"  -C, --check=CHECK   integrity check type: `none' (use with caution),\n"
"                      `crc32', `crc64' (default), or `sha256'"));
  puts(_(
"      --ignore-check  don't verify the integrity check when decompressing"));
 }

 puts(_(
"  -0 ... -9           compression preset; default is 6; take compressor *and*\n"
"                      decompressor memory usage into account before using 7-9!"));

 puts(_(
"  -e, --extreme       try to improve compression ratio by using more CPU time;\n"
"                      does not affect decompressor memory requirements"));

 puts(_(
"  -T, --threads=NUM   use at most NUM threads; the default is 1; set to 0\n"
"                      to use as many threads as there are processor cores"));

 if (long_help) {
  puts(_(
"      --block-size=SIZE\n"
"                      start a new .xz block after every SIZE bytes of input;\n"
"                      use this to set the block size for threaded compression"));
  puts(_(
"      --block-list=SIZES\n"
"                      start a new .xz block after the given comma-separated\n"
"                      intervals of uncompressed data"));
  puts(_(
"      --flush-timeout=TIMEOUT\n"
"                      when compressing, if more than TIMEOUT milliseconds has\n"
"                      passed since the previous flush and reading more input\n"
"                      would block, all pending data is flushed out"
  ));
  puts(_(
"      --memlimit-compress=LIMIT\n"
"      --memlimit-decompress=LIMIT\n"
"  -M, --memlimit=LIMIT\n"
"                      set memory usage limit for compression, decompression,\n"
"                      or both; LIMIT is in bytes, % of RAM, or 0 for defaults"));

  puts(_(
"      --no-adjust     if compression settings exceed the memory usage limit,\n"
"                      give an error instead of adjusting the settings downwards"));
 }

 if (long_help) {
  puts(_(
"\n Custom filter chain for compression (alternative for using presets):"));
  puts(_(
"\n"
"  --x86[=OPTS]        x86 BCJ filter (32-bit and 64-bit)\n"
"  --powerpc[=OPTS]    PowerPC BCJ filter (big endian only)\n"
"  --ia64[=OPTS]       IA-64 (Itanium) BCJ filter\n"
"  --arm[=OPTS]        ARM BCJ filter (little endian only)\n"
"  --armthumb[=OPTS]   ARM-Thumb BCJ filter (little endian only)\n"
"  --sparc[=OPTS]      SPARC BCJ filter\n"
"                      Valid OPTS for all BCJ filters:\n"
"                        start=NUM  start offset for conversions (default=0)"));
 }

 if (long_help)
  puts(_("\n Other options:\n"));

 puts(_(
"  -q, --quiet         suppress warnings; specify twice to suppress errors too\n"
"  -v, --verbose       be verbose; specify twice for even more verbose"));

 if (long_help) {
  puts(_(
"  -Q, --no-warn       make warnings not affect the exit status"));
  puts(_(
"      --robot         use machine-parsable messages (useful for scripts)"));
  puts("");
  puts(_(
"      --info-memory   display the total amount of RAM and the currently active\n"
"                      memory usage limits, and exit"));
  puts(_(
"  -h, --help          display the short help (lists only the basic options)\n"
"  -H, --long-help     display this long help and exit"));
 } else {
  puts(_(
"  -h, --help          display this short help and exit\n"
"  -H, --long-help     display the long help (lists also the advanced options)"));
 }

 puts(_(
"  -V, --version       display the version number and exit"));

 puts(_("\nWith no FILE, or when FILE is -, read standard input.\n"));





 printf(_("Report bugs to <%s> (in English or Finnish).\n"),
   PACKAGE_BUGREPORT);
 printf(_("%s home page: <%s>\n"), PACKAGE_NAME, PACKAGE_URL);






 tuklib_exit(E_SUCCESS, E_ERROR, verbosity != V_SILENT);
}
