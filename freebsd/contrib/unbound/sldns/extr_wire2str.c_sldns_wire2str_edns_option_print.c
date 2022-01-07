
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
 int print_hex_buf (char**,size_t*,int *,size_t) ;
 scalar_t__ sldns_str_print (char**,size_t*,char*) ;
 int sldns_wire2str_edns_dau_print (char**,size_t*,int *,size_t) ;
 int sldns_wire2str_edns_dhu_print (char**,size_t*,int *,size_t) ;
 int sldns_wire2str_edns_keepalive_print (char**,size_t*,int *,size_t) ;
 int sldns_wire2str_edns_llq_print (char**,size_t*,int *,size_t) ;
 int sldns_wire2str_edns_n3u_print (char**,size_t*,int *,size_t) ;
 int sldns_wire2str_edns_nsid_print (char**,size_t*,int *,size_t) ;
 scalar_t__ sldns_wire2str_edns_option_code_print (char**,size_t*,int) ;
 int sldns_wire2str_edns_subnet_print (char**,size_t*,int *,size_t) ;
 int sldns_wire2str_edns_ul_print (char**,size_t*,int *,size_t) ;

int sldns_wire2str_edns_option_print(char** s, size_t* sl,
 uint16_t option_code, uint8_t* optdata, size_t optlen)
{
 int w = 0;
 w += sldns_wire2str_edns_option_code_print(s, sl, option_code);
 w += sldns_str_print(s, sl, ": ");
 switch(option_code) {
 case 132:
  w += sldns_wire2str_edns_llq_print(s, sl, optdata, optlen);
  break;
 case 128:
  w += sldns_wire2str_edns_ul_print(s, sl, optdata, optlen);
  break;
 case 130:
  w += sldns_wire2str_edns_nsid_print(s, sl, optdata, optlen);
  break;
 case 135:
  w += sldns_wire2str_edns_dau_print(s, sl, optdata, optlen);
  break;
 case 134:
  w += sldns_wire2str_edns_dhu_print(s, sl, optdata, optlen);
  break;
 case 131:
  w += sldns_wire2str_edns_n3u_print(s, sl, optdata, optlen);
  break;
 case 136:
  w += sldns_wire2str_edns_subnet_print(s, sl, optdata, optlen);
  break;
  case 133:
  w += sldns_wire2str_edns_keepalive_print(s, sl, optdata, optlen);
  break;
 case 129:
  w += print_hex_buf(s, sl, optdata, optlen);
  break;
 default:

  w += print_hex_buf(s, sl, optdata, optlen);
  break;
 }
 return w;
}
