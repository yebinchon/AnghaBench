
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct query_cmd {scalar_t__ query_type; scalar_t__ name; } ;


 struct query_cmd* query_cmds ;

__attribute__((used)) static const struct query_cmd *find_query_by_type(uint16_t type)
{
 const struct query_cmd *q;

 for (q = query_cmds; q->name; q++)
  if (q->query_type == type)
   return q;

 return ((void*)0);
}
