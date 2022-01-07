
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* set; } ;
typedef TYPE_1__ escape_t ;
typedef int _HZEncodingInfo ;


 void* E0SET (int *) ;
 void* E1SET (int *) ;
 int EINVAL ;
 int TAILQ_INSERT_TAIL (void*,TYPE_1__*,int ) ;
 int _citrus_prop_parse_variable (int ,void*,char const*,int ) ;
 TYPE_1__* calloc (int,int) ;
 int entry ;
 int escape_hints ;
 int free (TYPE_1__*) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
_citrus_HZ_parse_escape(void *context, const char *name, const char *s)
{
 _HZEncodingInfo *ei;
 escape_t *escape;
 void *p[2];

 ei = (_HZEncodingInfo *)context;
 escape = calloc(1, sizeof(*escape));
 if (escape == ((void*)0))
  return (EINVAL);
 if (strcmp("0", name) == 0) {
  escape->set = E0SET(ei);
  TAILQ_INSERT_TAIL(E0SET(ei), escape, entry);
 } else if (strcmp("1", name) == 0) {
  escape->set = E1SET(ei);
  TAILQ_INSERT_TAIL(E1SET(ei), escape, entry);
 } else {
  free(escape);
  return (EINVAL);
 }
 p[0] = (void *)escape;
 p[1] = (void *)ei;
 return (_citrus_prop_parse_variable(
     escape_hints, (void *)&p[0], s, strlen(s)));
}
