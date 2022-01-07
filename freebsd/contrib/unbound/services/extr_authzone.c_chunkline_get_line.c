
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct auth_chunk {size_t len; struct auth_chunk* next; scalar_t__* data; } ;
typedef int sldns_buffer ;


 int VERB_ALGO ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_write_u8 (int *,int ) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
chunkline_get_line(struct auth_chunk** chunk, size_t* chunk_pos,
 sldns_buffer* buf)
{
 int readsome = 0;
 while(*chunk) {

  if(*chunk_pos < (*chunk)->len) {
   readsome = 1;
   while(*chunk_pos < (*chunk)->len) {
    char c = (char)((*chunk)->data[*chunk_pos]);
    (*chunk_pos)++;
    if(sldns_buffer_remaining(buf) < 2) {

     verbose(VERB_ALGO, "http chunkline, "
      "line too long");
     return 0;
    }
    sldns_buffer_write_u8(buf, (uint8_t)c);
    if(c == '\n') {

     return 1;
    }
   }
  }

  *chunk = (*chunk)->next;
  *chunk_pos = 0;
 }

 if(readsome) return 1;
 return 0;
}
