
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int afiol_dev_offset ;
 size_t afiol_filesize_c_offset ;
 int afiol_filesize_offset ;
 int afiol_filesize_size ;
 size_t afiol_header_size ;
 size_t afiol_ino_m_offset ;
 int afiol_mode_offset ;
 size_t afiol_mtime_n_offset ;
 int afiol_namesize_offset ;
 size_t afiol_xsize_s_offset ;
 int is_hex (char const*,int) ;

__attribute__((used)) static int
is_afio_large(const char *h, size_t len)
{
 if (len < afiol_header_size)
  return (0);
 if (h[afiol_ino_m_offset] != 'm'
     || h[afiol_mtime_n_offset] != 'n'
     || h[afiol_xsize_s_offset] != 's'
     || h[afiol_filesize_c_offset] != ':')
  return (0);
 if (!is_hex(h + afiol_dev_offset, afiol_ino_m_offset - afiol_dev_offset))
  return (0);
 if (!is_hex(h + afiol_mode_offset, afiol_mtime_n_offset - afiol_mode_offset))
  return (0);
 if (!is_hex(h + afiol_namesize_offset, afiol_xsize_s_offset - afiol_namesize_offset))
  return (0);
 if (!is_hex(h + afiol_filesize_offset, afiol_filesize_size))
  return (0);
 return (1);
}
