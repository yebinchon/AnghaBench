
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_info {int qclass; int qtype; int qname; } ;
typedef enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;


 int log_nametypeclass (int,char const*,int ,int ,int ) ;

void
log_query_info(enum verbosity_value v, const char* str,
 struct query_info* qinf)
{
 log_nametypeclass(v, str, qinf->qname, qinf->qtype, qinf->qclass);
}
