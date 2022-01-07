
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_client_diff_summarize_kind_t ;






__attribute__((used)) static const char *
kind_to_word(svn_client_diff_summarize_kind_t kind)
{
  switch (kind)
    {
      case 128: return "modified";
      case 130: return "added";
      case 129: return "deleted";
      default: return "none";
    }
}
