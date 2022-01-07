
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sldns_buffer ;
typedef int FILE ;


 int EOF ;
 int fatal_exit (char*,int) ;
 int getc (int *) ;
 scalar_t__ is_bind_special (int) ;
 scalar_t__ isspace (unsigned char) ;
 int skip_to_eol (int *) ;
 scalar_t__ sldns_buffer_position (int *) ;
 char sldns_buffer_read_u8_at (int *,scalar_t__) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,int) ;
 int sldns_buffer_write_u8 (int *,int ) ;
 int ungetc (int,int *) ;

__attribute__((used)) static int
readkeyword_bindfile(FILE* in, sldns_buffer* buf, int* line, int comments)
{
 int c;
 int numdone = 0;
 while((c = getc(in)) != EOF ) {
  if(comments && c == '#') {
   skip_to_eol(in);
   (*line)++;
   continue;
  } else if(comments && c=='/' && numdone>0 &&
   sldns_buffer_read_u8_at(buf,
   sldns_buffer_position(buf)-1) == '/') {
   sldns_buffer_skip(buf, -1);
   numdone--;
   skip_to_eol(in);
   (*line)++;
   continue;
  } else if(comments && c=='*' && numdone>0 &&
   sldns_buffer_read_u8_at(buf,
   sldns_buffer_position(buf)-1) == '/') {
   sldns_buffer_skip(buf, -1);
   numdone--;

   while(c != EOF && (c=getc(in)) != EOF ) {
    if(c == '*') {
     if((c=getc(in)) == '/')
      break;
    }
    if(c == '\n')
     (*line)++;
   }
   continue;
  }

  if(numdone > 0) {

   if(isspace((unsigned char)c)) {
    ungetc(c, in);
    return numdone;
   }
   if(is_bind_special(c)) {
    ungetc(c, in);
    return numdone;
   }
  }
  if(c == '\n') {
   c = ' ';
   (*line)++;
  }

  if(sldns_buffer_remaining(buf) < 2) {
   fatal_exit("trusted-keys, %d, string too long", *line);
  }
  sldns_buffer_write_u8(buf, (uint8_t)c);
  numdone++;
  if(isspace((unsigned char)c)) {

   while((c = getc(in)) != EOF ) {
    if(c == '\n')
     (*line)++;
    if(!isspace((unsigned char)c)) {
     ungetc(c, in);
     break;
    }
   }
   return numdone;
  }
  if(is_bind_special(c))
   return numdone;
 }
 return numdone;
}
