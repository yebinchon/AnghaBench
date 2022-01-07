
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ucl_object_t ;
struct ucl_parser {TYPE_1__* last_comment; int comments; } ;
struct TYPE_2__ {int flags; } ;


 int UCL_OBJECT_INHERITED ;
 int ucl_object_insert_key (int ,TYPE_1__*,char const*,int,int) ;

__attribute__((used)) static void
ucl_attach_comment (struct ucl_parser *parser, ucl_object_t *obj, bool before)
{
 if (parser->last_comment) {
  ucl_object_insert_key (parser->comments, parser->last_comment,
    (const char *)&obj, sizeof (void *), 1);

  if (before) {
   parser->last_comment->flags |= UCL_OBJECT_INHERITED;
  }

  parser->last_comment = ((void*)0);
 }
}
