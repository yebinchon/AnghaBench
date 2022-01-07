
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct milenage_parameters {scalar_t__ res_len; struct milenage_parameters* next; int sqn; int amf; int opc; int ki; int imsi; } ;
typedef int buf ;
typedef int FILE ;


 scalar_t__ EAP_AKA_RES_MAX_LEN ;
 scalar_t__ EAP_AKA_RES_MIN_LEN ;
 scalar_t__ atoi (char*) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ hexstr2bin (char*,int ,int) ;
 struct milenage_parameters* milenage_db ;
 int os_free (struct milenage_parameters*) ;
 int os_strlcpy (int ,char*,int) ;
 int os_strlen (char*) ;
 struct milenage_parameters* os_zalloc (int) ;
 int printf (char*,char const*,...) ;
 char* str_token (char*,char*,char**) ;

__attribute__((used)) static int read_milenage(const char *fname)
{
 FILE *f;
 char buf[200], *pos, *pos2;
 struct milenage_parameters *m = ((void*)0);
 int line, ret = 0;

 if (fname == ((void*)0))
  return -1;

 f = fopen(fname, "r");
 if (f == ((void*)0)) {
  printf("Could not open Milenage data file '%s'\n", fname);
  return -1;
 }

 line = 0;
 while (fgets(buf, sizeof(buf), f)) {
  line++;


  buf[sizeof(buf) - 1] = '\0';
  if (buf[0] == '#')
   continue;
  pos = buf;
  while (*pos != '\0' && *pos != '\n')
   pos++;
  if (*pos == '\n')
   *pos = '\0';
  pos = buf;
  if (*pos == '\0')
   continue;

  m = os_zalloc(sizeof(*m));
  if (m == ((void*)0)) {
   ret = -1;
   break;
  }


  pos2 = ((void*)0);
  pos = str_token(buf, " ", &pos2);
  if (!pos || os_strlen(pos) >= sizeof(m->imsi)) {
   printf("%s:%d - Invalid IMSI\n", fname, line);
   ret = -1;
   break;
  }
  os_strlcpy(m->imsi, pos, sizeof(m->imsi));


  pos = str_token(buf, " ", &pos2);
  if (!pos || os_strlen(pos) != 32 ||
      hexstr2bin(pos, m->ki, 16)) {
   printf("%s:%d - Invalid Ki\n", fname, line);
   ret = -1;
   break;
  }


  pos = str_token(buf, " ", &pos2);
  if (!pos || os_strlen(pos) != 32 ||
      hexstr2bin(pos, m->opc, 16)) {
   printf("%s:%d - Invalid OPc\n", fname, line);
   ret = -1;
   break;
  }


  pos = str_token(buf, " ", &pos2);
  if (!pos || os_strlen(pos) != 4 || hexstr2bin(pos, m->amf, 2)) {
   printf("%s:%d - Invalid AMF\n", fname, line);
   ret = -1;
   break;
  }


  pos = str_token(buf, " ", &pos2);
  if (!pos || os_strlen(pos) != 12 ||
      hexstr2bin(pos, m->sqn, 6)) {
   printf("%s:%d - Invalid SEQ\n", fname, line);
   ret = -1;
   break;
  }

  pos = str_token(buf, " ", &pos2);
  if (pos) {
   m->res_len = atoi(pos);
   if (m->res_len &&
       (m->res_len < EAP_AKA_RES_MIN_LEN ||
        m->res_len > EAP_AKA_RES_MAX_LEN)) {
    printf("%s:%d - Invalid RES_len\n",
           fname, line);
    ret = -1;
    break;
   }
  }

  m->next = milenage_db;
  milenage_db = m;
  m = ((void*)0);
 }
 os_free(m);

 fclose(f);

 return ret;
}
