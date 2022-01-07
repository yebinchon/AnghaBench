
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef scalar_t__ off_t ;


 int APPEND16 (int const) ;
 scalar_t__ dnsname_to_labels (int * const,size_t,scalar_t__,char const* const,size_t const,int *) ;

__attribute__((used)) static int
evdns_request_data_build(const char *const name, const size_t name_len,
    const u16 trans_id, const u16 type, const u16 class,
    u8 *const buf, size_t buf_len) {
 off_t j = 0;
 u16 t_;

 APPEND16(trans_id);
 APPEND16(0x0100);
 APPEND16(1);
 APPEND16(0);
 APPEND16(0);
 APPEND16(0);

 j = dnsname_to_labels(buf, buf_len, j, name, name_len, ((void*)0));
 if (j < 0) {
  return (int)j;
 }

 APPEND16(type);
 APPEND16(class);

 return (int)j;
 overflow:
 return (-1);
}
