
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_client_diff_summarize_kind_t ;






__attribute__((used)) static char
kind_to_char(svn_client_diff_summarize_kind_t kind)
{
  switch (kind)
    {
      case 128:
        return 'M';

      case 130:
        return 'A';

      case 129:
        return 'D';

      default:
        return ' ';
    }
}
