
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_anchors {int dummy; } ;
typedef int sldns_buffer ;
typedef int FILE ;


 int anchor_store_str (struct val_anchors*,int *,char*) ;
 int free (char*) ;
 scalar_t__ isspace (unsigned char) ;
 int log_err (char*,int) ;
 int readkeyword_bindfile (int *,int *,int*,int) ;
 scalar_t__* sldns_buffer_begin (int *) ;
 int sldns_buffer_clear (int *) ;
 char* sldns_buffer_current (int *) ;
 int sldns_buffer_position (int *) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,int) ;
 int sldns_buffer_write (int *,char*,int) ;
 int sldns_buffer_write_u8 (int *,int ) ;
 char* strdup (char*) ;

__attribute__((used)) static int
process_bind_contents(struct val_anchors* anchors, sldns_buffer* buf,
 int* line, FILE* in)
{





 int contnum = 0;
 int quoted = 0;
 int comments = 1;
 int rdlen;
 char* str = 0;
 sldns_buffer_clear(buf);
 while((rdlen=readkeyword_bindfile(in, buf, line, comments))) {
  if(rdlen == 1 && sldns_buffer_position(buf) == 1
   && isspace((unsigned char)*sldns_buffer_begin(buf))) {

   sldns_buffer_clear(buf);
   continue;
  } else if(rdlen == 1 && sldns_buffer_current(buf)[-1] == '"') {

   if(contnum == 0) {
    quoted = 1;
    comments = 0;
   }
   sldns_buffer_skip(buf, -1);
   if(contnum > 0 && quoted) {
    if(sldns_buffer_remaining(buf) < 8+1) {
     log_err("line %d, too long", *line);
     return 0;
    }
    sldns_buffer_write(buf, " DNSKEY ", 8);
    quoted = 0;
    comments = 1;
   } else if(contnum > 0)
    comments = !comments;
   continue;
  } else if(rdlen == 1 && sldns_buffer_current(buf)[-1] == ';') {

   if(contnum < 5) {
    sldns_buffer_write_u8(buf, 0);
    log_err("line %d, bad key", *line);
    return 0;
   }
   sldns_buffer_skip(buf, -1);
   sldns_buffer_write_u8(buf, 0);
   str = strdup((char*)sldns_buffer_begin(buf));
   if(!str) {
    log_err("line %d, allocation failure", *line);
    return 0;
   }
   if(!anchor_store_str(anchors, buf, str)) {
    log_err("line %d, bad key", *line);
    free(str);
    return 0;
   }
   free(str);
   sldns_buffer_clear(buf);
   contnum = 0;
   quoted = 0;
   comments = 1;
   continue;
  } else if(rdlen == 1 && sldns_buffer_current(buf)[-1] == '}') {
   if(contnum > 0) {
    sldns_buffer_write_u8(buf, 0);
    log_err("line %d, bad key before }", *line);
    return 0;
   }
   return 1;
  } else if(rdlen == 1 &&
   isspace((unsigned char)sldns_buffer_current(buf)[-1])) {

  } else {

   contnum ++;
   if(contnum == 1 && !quoted) {
    if(sldns_buffer_remaining(buf) < 8+1) {
     log_err("line %d, too long", *line);
     return 0;
    }
    sldns_buffer_write(buf, " DNSKEY ", 8);
   }
  }
 }

 log_err("line %d, EOF before }", *line);
 return 0;
}
