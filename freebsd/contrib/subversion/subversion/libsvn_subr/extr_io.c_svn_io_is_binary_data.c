
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_size_t ;


 int FALSE ;

svn_boolean_t
svn_io_is_binary_data(const void *data, apr_size_t len)
{
  const unsigned char *buf = data;

  if (len == 3 && buf[0] == 0xEF && buf[1] == 0xBB && buf[2] == 0xBF)
    {


      return FALSE;
    }
  if (len > 0)
    {
      apr_size_t i;
      apr_size_t binary_count = 0;




      for (i = 0; i < len; i++)
        {
          if (buf[i] == 0)
            {
              binary_count = len;
              break;
            }
          if ((buf[i] < 0x07)
              || ((buf[i] > 0x0D) && (buf[i] < 0x20))
              || (buf[i] > 0x7F))
            {
              binary_count++;
            }
        }

      return (((binary_count * 1000) / len) > 850);
    }

  return FALSE;
}
