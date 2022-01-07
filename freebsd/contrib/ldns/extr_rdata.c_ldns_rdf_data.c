
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * _data; } ;
typedef TYPE_1__ ldns_rdf ;


 int assert (int ) ;

uint8_t *
ldns_rdf_data(const ldns_rdf *rd)
{
 assert(rd != ((void*)0));
 return rd->_data;
}
