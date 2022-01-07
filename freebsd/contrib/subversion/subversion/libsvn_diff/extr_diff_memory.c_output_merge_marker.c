
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int * markers; int output_stream; } ;
typedef TYPE_1__ merge_output_baton_t ;


 int SVN_ERR (int ) ;
 int * output_marker_eol (TYPE_1__*) ;
 int svn_stream_puts (int ,int ) ;

__attribute__((used)) static svn_error_t *
output_merge_marker(merge_output_baton_t *btn, int idx)
{
  SVN_ERR(svn_stream_puts(btn->output_stream, btn->markers[idx]));
  return output_marker_eol(btn);
}
