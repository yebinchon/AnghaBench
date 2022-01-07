
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FORMAT_AUTO ;
 int FORMAT_RAW ;
 int FORMAT_XZ ;
 int _ (char*) ;
 int _use_lfn (char const*) ;
 int assert (int) ;
 char const* custom_suffix ;
 scalar_t__ has_dir_sep (char const*) ;
 scalar_t__ has_sfn_suffix (char const*,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int message_error (int ,char const*) ;
 int msg_suffix (char const*,char const*) ;
 int opt_format ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;
 scalar_t__ test_suffix (char const*,char const*,size_t) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static char *
compressed_name(const char *src_name, size_t src_len)
{

 static const char *const all_suffixes[][4] = {
  {
   ".xz",
   ".txz",
   ((void*)0)
  }, {
   ".lzma",



   ".tlz",
   ((void*)0)






  }, {


   ((void*)0)
  }
 };


 assert(opt_format != FORMAT_AUTO);

 const size_t format = opt_format - 1;
 const char *const *suffixes = all_suffixes[format];


 for (size_t i = 0; suffixes[i] != ((void*)0); ++i) {
  if (test_suffix(suffixes[i], src_name, src_len) != 0) {
   msg_suffix(src_name, suffixes[i]);
   return ((void*)0);
  }
 }
 if (custom_suffix != ((void*)0)) {
  if (test_suffix(custom_suffix, src_name, src_len) != 0) {
   msg_suffix(src_name, custom_suffix);
   return ((void*)0);
  }
 }



 if (opt_format == FORMAT_RAW && custom_suffix == ((void*)0)) {
  message_error(_("%s: With --format=raw, "
    "--suffix=.SUF is required unless "
    "writing to stdout"), src_name);
  return ((void*)0);
 }

 const char *suffix = custom_suffix != ((void*)0)
   ? custom_suffix : suffixes[0];
 size_t suffix_len = strlen(suffix);
 char *dest_name = xmalloc(src_len + suffix_len + 1);

 memcpy(dest_name, src_name, src_len);
 memcpy(dest_name + src_len, suffix, suffix_len);
 dest_name[src_len + suffix_len] = '\0';

 return dest_name;
}
