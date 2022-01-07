
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ui_file_write (void*,char const*,long) ;

__attribute__((used)) static void
do_write (void *data, const char *buffer, long length_buffer)
{
  ui_file_write (data, buffer, length_buffer);
}
