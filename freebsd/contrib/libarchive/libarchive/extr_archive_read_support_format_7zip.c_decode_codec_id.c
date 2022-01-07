
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long
decode_codec_id(const unsigned char *codecId, size_t id_size)
{
 unsigned i;
 unsigned long id = 0;

 for (i = 0; i < id_size; i++) {
  id <<= 8;
  id += codecId[i];
 }
 return (id);
}
