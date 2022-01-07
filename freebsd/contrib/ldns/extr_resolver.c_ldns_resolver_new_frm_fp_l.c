
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ssize_t ;
typedef int ldns_status ;
typedef int ldns_rr ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int int8_t ;
typedef int FILE ;


 int EOF ;
 int LDNS_FREE (int) ;
 int LDNS_MALLOC (int) ;
 int LDNS_MAX_LINELEN ;
 int LDNS_PARSE_NORMAL ;
 int LDNS_PARSE_SKIP_SPACE ;
 int LDNS_RDF_TYPE_A ;
 int LDNS_RDF_TYPE_AAAA ;
 int LDNS_RDF_TYPE_DNAME ;



 int LDNS_RESOLV_KEYWORDS ;




 int LDNS_STATUS_FILE_ERR ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_NULL ;
 int LDNS_STATUS_OK ;
 int LDNS_STATUS_SYNTAX_DNAME_ERR ;
 int LDNS_STATUS_SYNTAX_ERR ;
 int LDNS_STATUS_SYNTAX_MISSING_VALUE_ERR ;
 int b ;
 int fclose (int *) ;
 int fgetc (int *) ;
 int * fopen (char*,char*) ;
 int ldns_bget_token (int,char*,int ,size_t) ;
 int ldns_buffer ;
 int ldns_buffer_free (int) ;
 int ldns_buffer_new_frm_data (int,char*,size_t) ;
 int ldns_buffer_status (int) ;
 int ldns_fget_token_l (int *,char*,int ,int ,int*) ;
 int ldns_rdf_deep_free (int *) ;
 int * ldns_rdf_new_frm_str (int ,char*) ;
 int * ldns_read_anchor_file (char*) ;
 int ldns_resolver_deep_free (int *) ;
 int * ldns_resolver_new () ;
 int ldns_resolver_push_dnssec_anchor (int *,int *) ;
 int ldns_resolver_push_nameserver (int *,int *) ;
 int ldns_resolver_push_searchlist (int *,int *) ;
 int ldns_resolver_set_domain (int *,int *) ;
 int ldns_rr_free (int *) ;
 int strcasecmp (char const*,char*) ;
 int * strchr (char*,char) ;

ldns_status
ldns_resolver_new_frm_fp_l(ldns_resolver **res, FILE *fp, int *line_nr)
{
 ldns_resolver *r;
 const char *keyword[LDNS_RESOLV_KEYWORDS];
 char word[LDNS_MAX_LINELEN + 1];
 int8_t expect;
 uint8_t i;
 ldns_rdf *tmp;



 ssize_t gtr, bgtr;
 ldns_buffer *b;
        int lnr = 0, oldline;
 FILE* myfp = fp;
        if(!line_nr) line_nr = &lnr;

 if(!fp) {
  myfp = fopen("/etc/resolv.conf", "r");
  if(!myfp)
   return LDNS_STATUS_FILE_ERR;
 }
 keyword[131] = "nameserver";
 keyword[133] = "domain";
 keyword[129] = "search";

 keyword[128] = "sortlist";
 keyword[130] = "options";
 keyword[134] = "anchor";
 expect = 132;

 r = ldns_resolver_new();
 if (!r) {
  if(!fp) fclose(myfp);
  return LDNS_STATUS_MEM_ERR;
 }

 gtr = 1;
 word[0] = 0;
        oldline = *line_nr;
        expect = 132;
 while (gtr > 0) {

  if (word[0] == '#') {
                        word[0]='x';
                        if(oldline == *line_nr) {

                                int c;
                                do {
                                        c = fgetc(myfp);
                                } while(c != EOF && c != '\n');
                                if(c=='\n') (*line_nr)++;
                        }

                        oldline = *line_nr;
   continue;
  }
                oldline = *line_nr;
  switch(expect) {
   case 132:

    gtr = ldns_fget_token_l(myfp, word, LDNS_PARSE_NORMAL, 0, line_nr);
    if (gtr != 0) {
                                        if(word[0] == '#') continue;
     for(i = 0; i < LDNS_RESOLV_KEYWORDS; i++) {
      if (strcasecmp(keyword[i], word) == 0) {



       expect = i;
       break;
      }
     }

     if (expect == 132) {






     }
    }
    break;
   case 133:

    gtr = ldns_fget_token_l(myfp, word, LDNS_PARSE_NORMAL, 0, line_nr);
    if (gtr == 0) {
     if(!fp) fclose(myfp);
     return LDNS_STATUS_SYNTAX_MISSING_VALUE_ERR;
    }
                                if(word[0] == '#') {
                                        expect = 132;
                                        continue;
                                }
    tmp = ldns_rdf_new_frm_str(LDNS_RDF_TYPE_DNAME, word);
    if (!tmp) {
     ldns_resolver_deep_free(r);
     if(!fp) fclose(myfp);
     return LDNS_STATUS_SYNTAX_DNAME_ERR;
    }


    ldns_resolver_set_domain(r, tmp);
    expect = 132;
    break;
   case 131:

    gtr = ldns_fget_token_l(myfp, word, LDNS_PARSE_NORMAL, 0, line_nr);
    if (gtr == 0) {
     if(!fp) fclose(myfp);
     return LDNS_STATUS_SYNTAX_MISSING_VALUE_ERR;
    }
                                if(word[0] == '#') {
                                        expect = 132;
                                        continue;
                                }
                                if(strchr(word, '%')) {


                                        strchr(word, '%')[0]=0;
                                }
    tmp = ldns_rdf_new_frm_str(LDNS_RDF_TYPE_AAAA, word);
    if (!tmp) {

     tmp = ldns_rdf_new_frm_str(LDNS_RDF_TYPE_A, word);
    }

    if (!tmp) {
     ldns_resolver_deep_free(r);
     if(!fp) fclose(myfp);
     return LDNS_STATUS_SYNTAX_ERR;
    }
    (void)ldns_resolver_push_nameserver(r, tmp);
    ldns_rdf_deep_free(tmp);
    expect = 132;
    break;
   case 129:

    gtr = ldns_fget_token_l(myfp, word, LDNS_PARSE_SKIP_SPACE, 0, line_nr);
    b = LDNS_MALLOC(ldns_buffer);
    if(!b) {
     ldns_resolver_deep_free(r);
     if(!fp) fclose(myfp);
     return LDNS_STATUS_MEM_ERR;
    }

    ldns_buffer_new_frm_data(b, word, (size_t) gtr);
    if(ldns_buffer_status(b) != LDNS_STATUS_OK) {
     LDNS_FREE(b);
     ldns_resolver_deep_free(r);
     if(!fp) fclose(myfp);
     return LDNS_STATUS_MEM_ERR;
    }
    bgtr = ldns_bget_token(b, word, LDNS_PARSE_NORMAL, (size_t) gtr + 1);
    while (bgtr > 0) {
     gtr -= bgtr;
                                        if(word[0] == '#') {
                                                expect = 132;
                                                break;
                                        }
     tmp = ldns_rdf_new_frm_str(LDNS_RDF_TYPE_DNAME, word);
     if (!tmp) {
      ldns_resolver_deep_free(r);
      ldns_buffer_free(b);
      if(!fp) fclose(myfp);
      return LDNS_STATUS_SYNTAX_DNAME_ERR;
     }

     ldns_resolver_push_searchlist(r, tmp);

     ldns_rdf_deep_free(tmp);
     bgtr = ldns_bget_token(b, word, LDNS_PARSE_NORMAL,
         (size_t) gtr + 1);
    }
    ldns_buffer_free(b);
    if (expect != 132) {
     gtr = 1;
     expect = 132;
    }
    break;
   case 128:
    gtr = ldns_fget_token_l(myfp, word, LDNS_PARSE_SKIP_SPACE, 0, line_nr);

    expect = 132;
    break;
   case 130:
    gtr = ldns_fget_token_l(myfp, word, LDNS_PARSE_SKIP_SPACE, 0, line_nr);

    expect = 132;
    break;
   case 134:

    gtr = ldns_fget_token_l(myfp, word, LDNS_PARSE_NORMAL, 0, line_nr);
    if (gtr == 0) {
     ldns_resolver_deep_free(r);
     if(!fp) fclose(myfp);
     return LDNS_STATUS_SYNTAX_MISSING_VALUE_ERR;
    }
                                if(word[0] == '#') {
                                        expect = 132;
                                        continue;
                                }






    expect = 132;
    break;
  }
 }

 if(!fp)
  fclose(myfp);

 if (res) {
  *res = r;
  return LDNS_STATUS_OK;
 } else {
  ldns_resolver_deep_free(r);
  return LDNS_STATUS_NULL;
 }
}
