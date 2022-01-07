
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rdf_type ;
struct TYPE_3__ {int _type; } ;
typedef TYPE_1__ ldns_rdf ;


 int assert (int ) ;

void
ldns_rdf_set_type(ldns_rdf *rd, ldns_rdf_type type)
{
 assert(rd != ((void*)0));
 rd->_type = type;
}
