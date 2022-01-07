
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int marker_eol; int output_stream; } ;
typedef TYPE_1__ svn_diff3__file_output_baton_t ;


 int * svn_stream_puts (int ,int ) ;

__attribute__((used)) static svn_error_t *
output_marker_eol(svn_diff3__file_output_baton_t *btn)
{
  return svn_stream_puts(btn->output_stream, btn->marker_eol);
}
