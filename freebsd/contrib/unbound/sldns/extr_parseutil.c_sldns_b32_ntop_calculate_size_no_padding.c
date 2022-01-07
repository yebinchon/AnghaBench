
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t sldns_b32_ntop_calculate_size_no_padding(size_t src_data_length)
{
 return ((src_data_length + 3) * 8 / 5) - 4;
}
