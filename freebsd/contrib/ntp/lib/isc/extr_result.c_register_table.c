
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int base; unsigned int last; char const** text; int set; int * msgcat; } ;
typedef TYPE_1__ resulttable ;
typedef int isc_result_t ;
typedef int isc_msgcat_t ;


 int ISC_LINK_INIT (TYPE_1__*,int ) ;
 int ISC_LIST_APPEND (int ,TYPE_1__*,int ) ;
 unsigned int ISC_RESULTCLASS_SIZE ;
 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;
 int link ;
 int lock ;
 TYPE_1__* malloc (int) ;
 int tables ;

__attribute__((used)) static isc_result_t
register_table(unsigned int base, unsigned int nresults, const char **txt,
        isc_msgcat_t *msgcat, int set)
{
 resulttable *table;

 REQUIRE(base % ISC_RESULTCLASS_SIZE == 0);
 REQUIRE(nresults <= ISC_RESULTCLASS_SIZE);
 REQUIRE(txt != ((void*)0));





 table = malloc(sizeof(*table));
 if (table == ((void*)0))
  return (ISC_R_NOMEMORY);
 table->base = base;
 table->last = base + nresults - 1;
 table->text = txt;
 table->msgcat = msgcat;
 table->set = set;
 ISC_LINK_INIT(table, link);

 LOCK(&lock);

 ISC_LIST_APPEND(tables, table, link);

 UNLOCK(&lock);

 return (ISC_R_SUCCESS);
}
