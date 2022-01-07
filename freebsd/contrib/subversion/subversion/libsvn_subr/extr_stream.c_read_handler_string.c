
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct string_stream_baton {scalar_t__ amt_read; TYPE_1__* str; } ;
typedef scalar_t__ apr_size_t ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ data; } ;


 int * SVN_NO_ERROR ;
 int memcpy (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static svn_error_t *
read_handler_string(void *baton, char *buffer, apr_size_t *len)
{
  struct string_stream_baton *btn = baton;
  apr_size_t left_to_read = btn->str->len - btn->amt_read;

  *len = (*len > left_to_read) ? left_to_read : *len;
  memcpy(buffer, btn->str->data + btn->amt_read, *len);
  btn->amt_read += *len;
  return SVN_NO_ERROR;
}
