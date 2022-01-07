
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int sldns_buffer ;


 scalar_t__ LABEL_IS_PTR (scalar_t__) ;
 int PTR_OFFSET (scalar_t__,scalar_t__) ;
 int dname_pkt_compare (int *,scalar_t__*,scalar_t__*) ;
 scalar_t__* sldns_buffer_at (int *,int ) ;

__attribute__((used)) static int
smart_compare(sldns_buffer* pkt, uint8_t* dnow,
 uint8_t* dprfirst, uint8_t* dprlast)
{
 if(LABEL_IS_PTR(*dnow)) {

  uint8_t* p = sldns_buffer_at(pkt, PTR_OFFSET(dnow[0], dnow[1]));
  if( p == dprfirst || p == dprlast )
   return 0;

  if(LABEL_IS_PTR(*dprlast) &&
   dprlast[0] == dnow[0] && dprlast[1] == dnow[1])
   return 0;
 }
 return dname_pkt_compare(pkt, dnow, dprlast);
}
