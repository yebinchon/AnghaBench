
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPP_APPLE ;
 int PPP_BRPDU ;
 int PPP_DECNET ;
 int PPP_IP ;
 int PPP_IPV6 ;
 int PPP_IPX ;
 int PPP_NS ;
 int PPP_OSI ;

__attribute__((used)) static int
ethertype_to_ppptype(int proto)
{
 switch (proto) {

 case 133:
  proto = PPP_IP;
  break;

 case 132:
  proto = PPP_IPV6;
  break;

 case 134:
  proto = PPP_DECNET;
  break;

 case 135:
  proto = PPP_APPLE;
  break;

 case 131:
  proto = PPP_NS;
  break;

 case 128:
  proto = PPP_OSI;
  break;

 case 130:





  proto = PPP_BRPDU;
  break;

 case 129:
  proto = PPP_IPX;
  break;
 }
 return (proto);
}
