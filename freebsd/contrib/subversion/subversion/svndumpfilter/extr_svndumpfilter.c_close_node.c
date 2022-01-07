
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct node_baton_t {TYPE_2__* rb; int node_pool; int tcl; int has_text; int * props; scalar_t__ has_props; int headers; scalar_t__ writing_begun; scalar_t__ do_skip; } ;
typedef int apr_size_t ;
struct TYPE_4__ {TYPE_1__* pb; } ;
struct TYPE_3__ {int out_stream; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int svn_repos__dump_node_record (int ,int ,int *,int ,int ,scalar_t__,int ) ;
 int svn_stream_write (int ,char*,int*) ;
 int svn_stringbuf_appendcstr (int *,char*) ;

__attribute__((used)) static svn_error_t *
close_node(void *node_baton)
{
  struct node_baton_t *nb = node_baton;
  apr_size_t len = 2;


  if (nb->do_skip)
    return SVN_NO_ERROR;


  if (! nb->writing_begun)
    {
      nb->writing_begun = TRUE;
      if (nb->has_props)
        {
          svn_stringbuf_appendcstr(nb->props, "PROPS-END\n");
        }
      SVN_ERR(svn_repos__dump_node_record(nb->rb->pb->out_stream,
                                          nb->headers,
                                          nb->has_props ? nb->props : ((void*)0),
                                          nb->has_text,
                                          nb->tcl,
                                          TRUE ,
                                          nb->node_pool));
    }


  SVN_ERR(svn_stream_write(nb->rb->pb->out_stream, "\n\n", &len));

  return SVN_NO_ERROR;
}
