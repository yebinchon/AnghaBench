
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {unsigned int vl; scalar_t__ weight; } ;
typedef TYPE_1__ ib_vl_arb_element_t ;


 int parse_one_unsigned (char const*,char,unsigned int*) ;

__attribute__((used)) static int parse_vlarb_entry(const char *str, ib_vl_arb_element_t * e)
{
 unsigned val;
 const char *p = str;
 p += parse_one_unsigned(p, ':', &val);
 e->vl = val % 15;
 p += parse_one_unsigned(p, ',', &val);
 e->weight = (uint8_t) val;
 return (int)(p - str);
}
