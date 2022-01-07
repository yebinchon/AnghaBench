
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct packed_rrset_data {int* rr_len; scalar_t__* rr_data; } ;


 int memmove (int *,scalar_t__,int) ;
 int ntohs (int ) ;

__attribute__((used)) static uint16_t
kd_get_flags(struct packed_rrset_data* data, size_t idx)
{
 uint16_t f;
 if(data->rr_len[idx] < 2+2)
  return 0;
 memmove(&f, data->rr_data[idx]+2, 2);
 f = ntohs(f);
 return f;
}
