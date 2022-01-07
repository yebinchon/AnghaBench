
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct milenage_parameters {char* imsi; int sqn; int amf; int opc; int ki; struct milenage_parameters* next; } ;
typedef int name ;
typedef int buf ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,char*) ;
 struct milenage_parameters* milenage_db ;
 int perror (char*) ;
 int printf (char*,char const*) ;
 scalar_t__ rename (char const*,char const*) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 int wpa_snprintf_hex (char*,int,int ,int) ;

__attribute__((used)) static void update_milenage_file(const char *fname)
{
 FILE *f, *f2;
 char name[500], buf[500], *pos;
 char *end = buf + sizeof(buf);
 struct milenage_parameters *m;
 size_t imsi_len;

 f = fopen(fname, "r");
 if (f == ((void*)0)) {
  printf("Could not open Milenage data file '%s'\n", fname);
  return;
 }

 snprintf(name, sizeof(name), "%s.new", fname);
 f2 = fopen(name, "w");
 if (f2 == ((void*)0)) {
  printf("Could not write Milenage data file '%s'\n", name);
  fclose(f);
  return;
 }

 while (fgets(buf, sizeof(buf), f)) {

  buf[sizeof(buf) - 1] = '\0';

  pos = strchr(buf, ' ');
  if (buf[0] == '#' || pos == ((void*)0) || pos - buf >= 20)
   goto no_update;

  imsi_len = pos - buf;

  for (m = milenage_db; m; m = m->next) {
   if (strncmp(buf, m->imsi, imsi_len) == 0 &&
       m->imsi[imsi_len] == '\0')
    break;
  }

  if (!m)
   goto no_update;

  pos = buf;
  pos += snprintf(pos, end - pos, "%s ", m->imsi);
  pos += wpa_snprintf_hex(pos, end - pos, m->ki, 16);
  *pos++ = ' ';
  pos += wpa_snprintf_hex(pos, end - pos, m->opc, 16);
  *pos++ = ' ';
  pos += wpa_snprintf_hex(pos, end - pos, m->amf, 2);
  *pos++ = ' ';
  pos += wpa_snprintf_hex(pos, end - pos, m->sqn, 6);
  *pos++ = '\n';

 no_update:
  fprintf(f2, "%s", buf);
 }

 fclose(f2);
 fclose(f);

 snprintf(name, sizeof(name), "%s.bak", fname);
 if (rename(fname, name) < 0) {
  perror("rename");
  return;
 }

 snprintf(name, sizeof(name), "%s.new", fname);
 if (rename(name, fname) < 0) {
  perror("rename");
  return;
 }

}
