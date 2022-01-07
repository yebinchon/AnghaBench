
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;



__attribute__((used)) static apr_size_t
getsize(const char *data, apr_size_t len,
        const char **endptr, apr_size_t max)
{
  apr_size_t max_prefix = max / 10;
  apr_size_t max_digit = max % 10;
  apr_size_t i;
  apr_size_t value = 0;

  for (i = 0; i < len && '0' <= data[i] && data[i] <= '9'; i++)
    {
      apr_size_t digit = data[i] - '0';


      if (value > max_prefix
          || (value == max_prefix && digit > max_digit))
        {
          *endptr = 0;
          return 0;
        }

      value = (value * 10) + digit;
    }


  if (i == 0)
    {
      *endptr = 0;
      return 0;
    }
  else
    {
      *endptr = data + i;
      return value;
    }
}
