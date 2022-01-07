
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_cmd {scalar_t__ alias; scalar_t__ name; } ;


 struct query_cmd* query_cmds ;
 int strcasecmp (char const*,scalar_t__) ;

__attribute__((used)) static const struct query_cmd *find_query(const char *name)
{
 const struct query_cmd *q;

 for (q = query_cmds; q->name; q++)
  if (!strcasecmp(name, q->name) ||
      (q->alias && !strcasecmp(name, q->alias)))
   return q;

 return ((void*)0);
}
