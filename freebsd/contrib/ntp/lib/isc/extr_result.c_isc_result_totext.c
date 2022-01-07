
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ base; scalar_t__ last; char** text; int set; int msgcat; } ;
typedef TYPE_1__ resulttable ;
typedef scalar_t__ isc_result_t ;


 TYPE_1__* ISC_LIST_HEAD (int ) ;
 TYPE_1__* ISC_LIST_NEXT (TYPE_1__*,int ) ;
 int ISC_RESULT_UNAVAILABLESET ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;
 int initialize () ;
 int isc_msgcat ;
 char* isc_msgcat_get (int ,int ,int,char const*) ;
 int link ;
 int lock ;
 int tables ;

const char *
isc_result_totext(isc_result_t result) {
 resulttable *table;
 const char *txt, *default_text;
 int idx;

 initialize();

 LOCK(&lock);

 txt = ((void*)0);
 for (table = ISC_LIST_HEAD(tables);
      table != ((void*)0);
      table = ISC_LIST_NEXT(table, link)) {
  if (result >= table->base && result <= table->last) {
   idx = (int)(result - table->base);
   default_text = table->text[idx];





   txt = isc_msgcat_get(table->msgcat, table->set,
          idx + 1, default_text);
   break;
  }
 }
 if (txt == ((void*)0))
  txt = isc_msgcat_get(isc_msgcat, ISC_RESULT_UNAVAILABLESET,
         1, "(result code text not available)");

 UNLOCK(&lock);

 return (txt);
}
