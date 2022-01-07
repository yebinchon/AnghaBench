
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ev_uint8_t ;
typedef int ev_uint64_t ;


 int ENCODE_INT_INTERNAL (int *,int ) ;

__attribute__((used)) static inline int
encode_int64_internal(ev_uint8_t *data, ev_uint64_t number)
{
 ENCODE_INT_INTERNAL(data, number);
}
