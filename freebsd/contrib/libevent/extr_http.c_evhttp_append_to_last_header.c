
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evkeyvalq {int dummy; } ;
struct evkeyval {char* value; } ;


 struct evkeyval* TAILQ_LAST (struct evkeyvalq*,int ) ;
 int evkeyvalq ;
 int evutil_rtrim_lws_ (char*) ;
 int memcpy (char*,char*,size_t) ;
 char* mm_realloc (char*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static int
evhttp_append_to_last_header(struct evkeyvalq *headers, char *line)
{
 struct evkeyval *header = TAILQ_LAST(headers, evkeyvalq);
 char *newval;
 size_t old_len, line_len;

 if (header == ((void*)0))
  return (-1);

 old_len = strlen(header->value);


 while (*line == ' ' || *line == '\t')
  ++line;
 evutil_rtrim_lws_(line);

 line_len = strlen(line);

 newval = mm_realloc(header->value, old_len + line_len + 2);
 if (newval == ((void*)0))
  return (-1);

 newval[old_len] = ' ';
 memcpy(newval + old_len + 1, line, line_len + 1);
 header->value = newval;

 return (0);
}
