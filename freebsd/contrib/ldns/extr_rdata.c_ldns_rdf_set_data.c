
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* _data; } ;
typedef TYPE_1__ ldns_rdf ;


 int assert (int ) ;

void
ldns_rdf_set_data(ldns_rdf *rd, void *data)
{

 assert(rd != ((void*)0));
 rd->_data = data;
}
