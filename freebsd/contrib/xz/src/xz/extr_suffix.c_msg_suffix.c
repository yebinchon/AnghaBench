
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int message_warning (int ,char const*,char const*) ;

__attribute__((used)) static void
msg_suffix(const char *src_name, const char *suffix)
{
 message_warning(_("%s: File already has `%s' suffix, skipping"),
   src_name, suffix);
 return;
}
