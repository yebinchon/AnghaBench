
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uintptr_t ;
typedef int apr_size_t ;


 int const SVN__BIT_7_SET ;

__attribute__((used)) static const char *
first_non_fsm_start_char(const char *data, apr_size_t max_len)
{
  for (; max_len > 0; ++data, --max_len)
    if ((unsigned char)*data >= 0x80)
      break;

  return data;
}
