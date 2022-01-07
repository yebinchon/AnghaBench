
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int ucl_object_fromstring (char const*) ;
 int ucl_object_insert_key (int *,int ,char const*,int,int) ;

void
ucl_comments_add (ucl_object_t *comments, const ucl_object_t *obj,
  const char *comment)
{
 if (comments && obj && comment) {
  ucl_object_insert_key (comments, ucl_object_fromstring (comment),
    (const char *)&obj, sizeof (void *), 1);
 }
}
