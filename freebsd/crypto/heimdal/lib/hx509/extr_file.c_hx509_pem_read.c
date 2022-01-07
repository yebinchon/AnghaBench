
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* hx509_pem_read_func ) (int ,char*,int *,void*,size_t,void*) ;
typedef int hx509_pem_header ;
typedef int hx509_context ;
typedef int buf ;
typedef int FILE ;


 int HX509_PARSING_KEY_FAILED ;
 int abort () ;
 int base64_decode (char*,char*) ;
 char* emalloc (int) ;
 void* erealloc (void*,size_t) ;
 int * fgets (char*,int,int *) ;
 int free (char*) ;
 int hx509_pem_add_header (int **,char*,char*) ;
 int hx509_pem_free_header (int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int isspace (int) ;
 int memcpy (char*,char*,int) ;
 char* strchr (char*,char) ;
 int strcspn (char*,char*) ;
 char* strdup (char*) ;
 int strncmp (char*,char*,int) ;
 int stub1 (int ,char*,int *,void*,size_t,void*) ;

int
hx509_pem_read(hx509_context context,
        FILE *f,
        hx509_pem_read_func func,
        void *ctx)
{
    hx509_pem_header *headers = ((void*)0);
    char *type = ((void*)0);
    void *data = ((void*)0);
    size_t len = 0;
    char buf[1024];
    int ret = HX509_PARSING_KEY_FAILED;

    enum { BEFORE, SEARCHHEADER, INHEADER, INDATA, DONE } where;

    where = BEFORE;

    while (fgets(buf, sizeof(buf), f) != ((void*)0)) {
 char *p;
 int i;

 i = strcspn(buf, "\n");
 if (buf[i] == '\n') {
     buf[i] = '\0';
     if (i > 0)
  i--;
 }
 if (buf[i] == '\r') {
     buf[i] = '\0';
     if (i > 0)
  i--;
 }

 switch (where) {
 case BEFORE:
     if (strncmp("-----BEGIN ", buf, 11) == 0) {
  type = strdup(buf + 11);
  if (type == ((void*)0))
      break;
  p = strchr(type, '-');
  if (p)
      *p = '\0';
  where = SEARCHHEADER;
     }
     break;
 case SEARCHHEADER:
     p = strchr(buf, ':');
     if (p == ((void*)0)) {
  where = INDATA;
  goto indata;
     }

 case INHEADER:
     if (buf[0] == '\0') {
  where = INDATA;
  break;
     }
     p = strchr(buf, ':');
     if (p) {
  *p++ = '\0';
  while (isspace((int)*p))
      p++;
  ret = hx509_pem_add_header(&headers, buf, p);
  if (ret)
      abort();
     }
     break;
 case INDATA:
 indata:

     if (strncmp("-----END ", buf, 9) == 0) {
  where = DONE;
  break;
     }

     p = emalloc(i);
     i = base64_decode(buf, p);
     if (i < 0) {
  free(p);
  goto out;
     }

     data = erealloc(data, len + i);
     memcpy(((char *)data) + len, p, i);
     free(p);
     len += i;
     break;
 case DONE:
     abort();
 }

 if (where == DONE) {
     ret = (*func)(context, type, headers, data, len, ctx);
 out:
     free(data);
     data = ((void*)0);
     len = 0;
     free(type);
     type = ((void*)0);
     where = BEFORE;
     hx509_pem_free_header(headers);
     headers = ((void*)0);
     if (ret)
  break;
 }
    }

    if (where != BEFORE) {
 hx509_set_error_string(context, 0, HX509_PARSING_KEY_FAILED,
          "File ends before end of PEM end tag");
 ret = HX509_PARSING_KEY_FAILED;
    }
    if (data)
 free(data);
    if (type)
 free(type);
    if (headers)
 hx509_pem_free_header(headers);

    return ret;
}
