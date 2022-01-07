
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_anchors {int dummy; } ;
typedef int sldns_buffer ;
typedef int FILE ;


 int VERB_QUERY ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int log_err (char*,char const*,...) ;
 int process_bind_contents (struct val_anchors*,int *,int*,int *) ;
 int readkeyword_bindfile (int *,int *,int*,int) ;
 int skip_to_special (int *,int *,int*,char) ;
 scalar_t__ sldns_buffer_begin (int *) ;
 int sldns_buffer_clear (int *) ;
 int strerror (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int verbose (int ,char*,char const*) ;

__attribute__((used)) static int
anchor_read_bind_file(struct val_anchors* anchors, sldns_buffer* buffer,
 const char* fname)
{
 int line_nr = 1;
 FILE* in = fopen(fname, "r");
 int rdlen = 0;
 if(!in) {
  log_err("error opening file %s: %s", fname, strerror(errno));
  return 0;
 }
 verbose(VERB_QUERY, "reading in bind-compat-mode: '%s'", fname);

 sldns_buffer_clear(buffer);
 while((rdlen=readkeyword_bindfile(in, buffer, &line_nr, 1)) != 0) {
  if(rdlen != 12 || strncmp((char*)sldns_buffer_begin(buffer),
   "trusted-keys", 12) != 0) {
   sldns_buffer_clear(buffer);

   continue;
  }
  if(!skip_to_special(in, buffer, &line_nr, '{')) {
   log_err("error in trusted key: \"%s\"", fname);
   fclose(in);
   return 0;
  }

  if(!process_bind_contents(anchors, buffer, &line_nr, in)) {
   log_err("error in trusted key: \"%s\"", fname);
   fclose(in);
   return 0;
  }
  if(!skip_to_special(in, buffer, &line_nr, ';')) {
   log_err("error in trusted key: \"%s\"", fname);
   fclose(in);
   return 0;
  }
  sldns_buffer_clear(buffer);
 }
 fclose(in);
 return 1;
}
