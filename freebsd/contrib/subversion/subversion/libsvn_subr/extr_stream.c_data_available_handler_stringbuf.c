
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct stringbuf_stream_baton {scalar_t__ amt_read; TYPE_1__* str; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
data_available_handler_stringbuf(void *baton, svn_boolean_t *data_available)
{
  struct stringbuf_stream_baton *btn = baton;

  *data_available = ((btn->str->len - btn->amt_read) > 0);
  return SVN_NO_ERROR;
}
