
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sldns_file_parse_state {int lineno; } ;
struct config_file {char* chrootdir; } ;
struct auth_zone {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int LDNS_WIREPARSE_ERR_INCLUDE ;
 int LDNS_WIREPARSE_OFFSET (int) ;
 int MAX_INCLUDE_DEPTH ;
 int VERB_ALGO ;
 int az_insert_rr (struct auth_zone*,int *,size_t,size_t,int *) ;
 int errno ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int log_err (char*,...) ;
 int sldns_fp2wire_rr_buf (int *,int *,size_t*,size_t*,struct sldns_file_parse_state*) ;
 int sldns_get_errorstr_parse (int) ;
 int sldns_wire2str_type_buf (int ,char*,int) ;
 int sldns_wirerr_get_type (int *,size_t,size_t) ;
 char* strdup (char*) ;
 int strerror (int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int verbose (int ,char*,char*) ;

__attribute__((used)) static int
az_parse_file(struct auth_zone* z, FILE* in, uint8_t* rr, size_t rrbuflen,
 struct sldns_file_parse_state* state, char* fname, int depth,
 struct config_file* cfg)
{
 size_t rr_len, dname_len;
 int status;
 state->lineno = 1;

 while(!feof(in)) {
  rr_len = rrbuflen;
  dname_len = 0;
  status = sldns_fp2wire_rr_buf(in, rr, &rr_len, &dname_len,
   state);
  if(status == LDNS_WIREPARSE_ERR_INCLUDE && rr_len == 0) {

   if(strncmp((char*)rr, "$INCLUDE ", 9) == 0 ||
      strncmp((char*)rr, "$INCLUDE\t", 9) == 0) {
    FILE* inc;
    int lineno_orig = state->lineno;
    char* incfile = (char*)rr + 8;
    if(depth > MAX_INCLUDE_DEPTH) {
     log_err("%s:%d max include depth"
       "exceeded", fname, state->lineno);
     return 0;
    }

    while(*incfile == ' ' || *incfile == '\t')
     incfile++;

    if(cfg->chrootdir && cfg->chrootdir[0] &&
     strncmp(incfile, cfg->chrootdir,
      strlen(cfg->chrootdir)) == 0)
     incfile += strlen(cfg->chrootdir);
    incfile = strdup(incfile);
    if(!incfile) {
     log_err("malloc failure");
     return 0;
    }
    verbose(VERB_ALGO, "opening $INCLUDE %s",
     incfile);
    inc = fopen(incfile, "r");
    if(!inc) {
     log_err("%s:%d cannot open include "
      "file %s: %s", fname,
      lineno_orig, incfile,
      strerror(errno));
     free(incfile);
     return 0;
    }

    if(!az_parse_file(z, inc, rr, rrbuflen,
     state, incfile, depth+1, cfg)) {
     log_err("%s:%d cannot parse include "
      "file %s", fname,
      lineno_orig, incfile);
     fclose(inc);
     free(incfile);
     return 0;
    }
    fclose(inc);
    verbose(VERB_ALGO, "done with $INCLUDE %s",
     incfile);
    free(incfile);
    state->lineno = lineno_orig;
   }
   continue;
  }
  if(status != 0) {
   log_err("parse error %s %d:%d: %s", fname,
    state->lineno, LDNS_WIREPARSE_OFFSET(status),
    sldns_get_errorstr_parse(status));
   return 0;
  }
  if(rr_len == 0) {

   continue;
  }

  if(!az_insert_rr(z, rr, rr_len, dname_len, ((void*)0))) {
   char buf[17];
   sldns_wire2str_type_buf(sldns_wirerr_get_type(rr,
    rr_len, dname_len), buf, sizeof(buf));
   log_err("%s:%d cannot insert RR of type %s",
    fname, state->lineno, buf);
   return 0;
  }
 }
 return 1;
}
