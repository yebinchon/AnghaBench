
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* _data; } ;
typedef TYPE_1__ ldns_rdf ;


 int LDNS_FREE (TYPE_1__*) ;

void
ldns_rdf_deep_free(ldns_rdf *rd)
{
 if (rd) {
  if (rd->_data) {
   LDNS_FREE(rd->_data);
  }
  LDNS_FREE(rd);
 }
}
