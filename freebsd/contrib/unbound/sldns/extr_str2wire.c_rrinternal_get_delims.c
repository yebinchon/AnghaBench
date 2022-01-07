
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_rdf_type ;
__attribute__((used)) static const char*
rrinternal_get_delims(sldns_rdf_type rdftype, size_t r_cnt, size_t r_max)
{
 switch(rdftype) {
 case 133 :
 case 132 :
 case 130 :
 case 128 :
 case 131 :
 case 129 : if (r_cnt == r_max - 1) {
      return "\n";
     }
     break;
 default : break;
 }
 return "\n\t ";
}
