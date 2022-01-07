
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_triplet {struct gsm_triplet* next; int _rand; int sres; int kc; int imsi; } ;
typedef int buf ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 struct gsm_triplet* gsm_db ;
 scalar_t__ hexstr2bin (char*,int ,int) ;
 int os_free (struct gsm_triplet*) ;
 int os_strlcpy (int ,char*,int) ;
 int os_strlen (char*) ;
 struct gsm_triplet* os_zalloc (int) ;
 int printf (char*,char const*,...) ;
 char* str_token (char*,char*,char**) ;

__attribute__((used)) static int read_gsm_triplets(const char *fname)
{
 FILE *f;
 char buf[200], *pos, *pos2;
 struct gsm_triplet *g = ((void*)0);
 int line, ret = 0;

 if (fname == ((void*)0))
  return -1;

 f = fopen(fname, "r");
 if (f == ((void*)0)) {
  printf("Could not open GSM triplet data file '%s'\n", fname);
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

  g = os_zalloc(sizeof(*g));
  if (g == ((void*)0)) {
   ret = -1;
   break;
  }


  pos2 = ((void*)0);
  pos = str_token(buf, ":", &pos2);
  if (!pos || os_strlen(pos) >= sizeof(g->imsi)) {
   printf("%s:%d - Invalid IMSI\n", fname, line);
   ret = -1;
   break;
  }
  os_strlcpy(g->imsi, pos, sizeof(g->imsi));


  pos = str_token(buf, ":", &pos2);
  if (!pos || os_strlen(pos) != 16 || hexstr2bin(pos, g->kc, 8)) {
   printf("%s:%d - Invalid Kc\n", fname, line);
   ret = -1;
   break;
  }


  pos = str_token(buf, ":", &pos2);
  if (!pos || os_strlen(pos) != 8 ||
      hexstr2bin(pos, g->sres, 4)) {
   printf("%s:%d - Invalid SRES\n", fname, line);
   ret = -1;
   break;
  }


  pos = str_token(buf, ":", &pos2);
  if (!pos || os_strlen(pos) != 32 ||
      hexstr2bin(pos, g->_rand, 16)) {
   printf("%s:%d - Invalid RAND\n", fname, line);
   ret = -1;
   break;
  }

  g->next = gsm_db;
  gsm_db = g;
  g = ((void*)0);
 }
 os_free(g);

 fclose(f);

 return ret;
}
