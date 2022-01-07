
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t sldns_b32_pton_calculate_size(size_t src_text_length)
{
 return src_text_length * 5 / 8;
}
