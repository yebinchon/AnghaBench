
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;


 int FSM_START ;
 char* first_non_fsm_start_char (char const*,int) ;
 int** machine ;
 int* octet_category ;

const char *
svn_utf__last_valid(const char *data, apr_size_t len)
{
  const char *start = first_non_fsm_start_char(data, len);
  const char *end = data + len;
  int state = FSM_START;

  data = start;
  while (data < end)
    {
      unsigned char octet = *data++;
      int category = octet_category[octet];
      state = machine[state][category];
      if (state == FSM_START)
        start = data;
    }
  return start;
}
