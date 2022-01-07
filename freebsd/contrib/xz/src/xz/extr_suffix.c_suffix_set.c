
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int custom_suffix ;
 int free (int ) ;
 scalar_t__ has_dir_sep (char const*) ;
 int message_fatal (int ,char const*) ;
 int xstrdup (char const*) ;

extern void
suffix_set(const char *suffix)
{


 if (suffix[0] == '\0' || has_dir_sep(suffix))
  message_fatal(_("%s: Invalid filename suffix"), suffix);


 free(custom_suffix);
 custom_suffix = xstrdup(suffix);
 return;
}
