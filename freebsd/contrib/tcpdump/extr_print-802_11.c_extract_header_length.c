
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int netdissect_options ;



 int CTRL_ACK_HDRLEN ;


 int CTRL_BAR_HDRLEN ;
 int CTRL_BA_HDRLEN ;


 int CTRL_CONTROL_WRAPPER_HDRLEN ;

 int CTRL_CTS_HDRLEN ;

 int CTRL_END_ACK_HDRLEN ;
 int CTRL_END_HDRLEN ;

 int CTRL_PS_POLL_HDRLEN ;

 int CTRL_RTS_HDRLEN ;
 int DATA_FRAME_IS_QOS (int ) ;
 int FC_FROM_DS (int ) ;
 int FC_SUBTYPE (int ) ;
 int FC_TO_DS (int ) ;
 int FC_TYPE (int ) ;
 int MGMT_HDRLEN ;
 int ND_PRINT (int *) ;




__attribute__((used)) static int
extract_header_length(netdissect_options *ndo,
                      uint16_t fc)
{
 int len;

 switch (FC_TYPE(fc)) {
 case 128:
  return MGMT_HDRLEN;
 case 130:
  switch (FC_SUBTYPE(fc)) {
  case 135:
   return CTRL_CONTROL_WRAPPER_HDRLEN;
  case 137:
   return CTRL_BAR_HDRLEN;
  case 138:
   return CTRL_BA_HDRLEN;
  case 132:
   return CTRL_PS_POLL_HDRLEN;
  case 131:
   return CTRL_RTS_HDRLEN;
  case 134:
   return CTRL_CTS_HDRLEN;
  case 139:
   return CTRL_ACK_HDRLEN;
  case 136:
   return CTRL_END_HDRLEN;
  case 133:
   return CTRL_END_ACK_HDRLEN;
  default:
   ND_PRINT((ndo, "unknown 802.11 ctrl frame subtype (%d)", FC_SUBTYPE(fc)));
   return 0;
  }
 case 129:
  len = (FC_TO_DS(fc) && FC_FROM_DS(fc)) ? 30 : 24;
  if (DATA_FRAME_IS_QOS(FC_SUBTYPE(fc)))
   len += 2;
  return len;
 default:
  ND_PRINT((ndo, "unknown 802.11 frame type (%d)", FC_TYPE(fc)));
  return 0;
 }
}
