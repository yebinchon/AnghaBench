
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long
svn__strtoul(const char* buffer, const char** end)
{
  unsigned long result = 0;
  while (1)
    {
      unsigned long c = (unsigned char)*buffer - (unsigned char)'0';
      if (c > 9)
        break;

      result = result * 10 + c;
      ++buffer;
    }

  *end = buffer;
  return result;
}
