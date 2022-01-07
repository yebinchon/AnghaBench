
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MODE_COMPRESS ;
 int assert (int ) ;
 char* compressed_name (char const*,size_t const) ;
 scalar_t__ opt_mode ;
 size_t strlen (char const*) ;
 char* uncompressed_name (char const*,size_t const) ;

extern char *
suffix_get_dest_name(const char *src_name)
{
 assert(src_name != ((void*)0));



 const size_t src_len = strlen(src_name);

 return opt_mode == MODE_COMPRESS
   ? compressed_name(src_name, src_len)
   : uncompressed_name(src_name, src_len);
}
