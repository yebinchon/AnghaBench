
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct wrapped_receiver_baton_s {int orig_baton; int * (* orig_receiver ) (int ,int ,int ,char const*,char const*,int ,int *) ;} ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int * stub1 (int ,int ,int ,char const*,char const*,int ,int *) ;
 int svn_stringbuf_appendbyte (TYPE_1__*,char) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;

__attribute__((used)) static svn_error_t *
wrapped_receiver(void *baton,
                 apr_int64_t line_no,
                 svn_revnum_t revision,
                 const char *author,
                 const char *date,
                 const char *line,
                 apr_pool_t *pool)
{
  struct wrapped_receiver_baton_s *b = baton;
  svn_stringbuf_t *expanded_line = svn_stringbuf_create(line, pool);

  svn_stringbuf_appendbyte(expanded_line, '\r');

  return b->orig_receiver(b->orig_baton, line_no, revision, author,
                          date, expanded_line->data, pool);
}
