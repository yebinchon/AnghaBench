
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rdf_type ;
struct TYPE_3__ {int _type; } ;
typedef TYPE_1__ ldns_rdf ;


 int assert (int ) ;

ldns_rdf_type
ldns_rdf_get_type(const ldns_rdf *rd)
{
 assert(rd != ((void*)0));
 return rd->_type;
}
