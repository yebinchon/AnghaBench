
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
 char* first_non_fsm_start_char (char const*,int) ;

const char *
svn_utf__last_valid2(const char *data, apr_size_t len)
{
  const char *start = first_non_fsm_start_char(data, len);
  const char *end = data + len;
  int state = 128;

  data = start;
  while (data < end)
    {
      unsigned char octet = *data++;
      switch (state)
        {
        case 128:
          if (octet <= 0x7F)
            break;
          else if (octet <= 0xC1)
            state = 129;
          else if (octet <= 0xDF)
            state = 134;
          else if (octet == 0xE0)
            state = 130;
          else if (octet <= 0xEC)
            state = 133;
          else if (octet == 0xED)
            state = 135;
          else if (octet <= 0xEF)
            state = 133;
          else if (octet == 0xF0)
            state = 131;
          else if (octet <= 0xF3)
            state = 132;
          else if (octet <= 0xF4)
            state = 136;
          else
            state = 129;
          break;
        case 134:
          if (octet >= 0x80 && octet <= 0xBF)
            state = 128;
          else
            state = 129;
          break;
        case 130:
          if (octet >= 0xA0 && octet <= 0xBF)
            state = 134;
          else
            state = 129;
          break;
        case 133:
          if (octet >= 0x80 && octet <= 0xBF)
            state = 134;
          else
            state = 129;
          break;
        case 135:
          if (octet >= 0x80 && octet <= 0x9F)
            state = 134;
          else
            state = 129;
          break;
        case 131:
          if (octet >= 0x90 && octet <= 0xBF)
            state = 133;
          else
            state = 129;
          break;
        case 132:
          if (octet >= 0x80 && octet <= 0xBF)
            state = 133;
          else
            state = 129;
          break;
        case 136:
          if (octet >= 0x80 && octet <= 0x8F)
            state = 133;
          else
            state = 129;
          break;
        default:
        case 129:
          return start;
        }
      if (state == 128)
        start = data;
    }
  return start;
}
