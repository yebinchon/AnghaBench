
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct suffix_code_t {char* member_0; char* member_1; } ;


 char const* get_suffix_code (struct suffix_code_t const*,char const*) ;

__attribute__((used)) static const char *
get_filter_code(const char *suffix)
{

 static const struct suffix_code_t filters[] = {
  { ".Z", "compress" },
  { ".bz2", "bzip2" },
  { ".gz", "gzip" },
  { ".grz", "grzip" },
  { ".lrz", "lrzip" },
  { ".lz", "lzip" },
  { ".lz4", "lz4" },
  { ".lzo", "lzop" },
  { ".lzma", "lzma" },
  { ".uu", "uuencode" },
  { ".xz", "xz" },
  { ".zst", "zstd"},
  { ((void*)0), ((void*)0) }
 };

 return get_suffix_code(filters, suffix);
}
