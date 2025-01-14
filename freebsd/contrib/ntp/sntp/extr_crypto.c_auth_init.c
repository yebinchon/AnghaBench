
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int key_id; char* typen; int key_len; char* key_seq; scalar_t__ typei; struct key* next; } ;
typedef int kbuf ;
typedef int FILE ;


 int INIT_SSL () ;
 scalar_t__ debug ;
 struct key* emalloc (int) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int free (struct key*) ;
 int hex_val (char) ;
 int key_cnt ;
 struct key* key_ptr ;
 scalar_t__ keytype_from_text (char*,int *) ;
 int memcpy (char*,char*,int) ;
 int printf (char*,...) ;
 int sscanf (char*,char*,int*,char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

int
auth_init(
 const char *keyfile,
 struct key **keys
 )
{
 FILE *keyf = fopen(keyfile, "r");
 struct key *prev = ((void*)0);
 int scan_cnt, line_cnt = 1;
 char kbuf[200];
 char keystring[129];


 INIT_SSL();

 if (keyf == ((void*)0)) {
  if (debug)
   printf("sntp auth_init: Couldn't open key file %s for reading!\n", keyfile);
  return -1;
 }
 if (feof(keyf)) {
  if (debug)
   printf("sntp auth_init: Key file %s is empty!\n", keyfile);
  fclose(keyf);
  return -1;
 }
 key_cnt = 0;
 while (!feof(keyf)) {
  char * octothorpe;
  struct key *act;
  int goodline = 0;

  if (((void*)0) == fgets(kbuf, sizeof(kbuf), keyf))
   continue;

  kbuf[sizeof(kbuf) - 1] = '\0';
  octothorpe = strchr(kbuf, '#');
  if (octothorpe)
   *octothorpe = '\0';
  act = emalloc(sizeof(*act));

  scan_cnt = sscanf(kbuf, "%d %15s %128s",
     &act->key_id, act->typen, keystring);
  if (scan_cnt == 3) {
   int len = strlen(keystring);
   goodline = 1;
   if (len <= 20) {
    act->key_len = len;
    memcpy(act->key_seq, keystring, len + 1);
   } else if ((len & 1) != 0) {
    goodline = 0;
   } else {
    int j;
    act->key_len = len >> 1;
    for (j = 0; j < len; j+=2) {
     int val;
     val = (hex_val(keystring[j]) << 4) |
            hex_val(keystring[j+1]);
     if (val < 0) {
      goodline = 0;
      break;
     }
     act->key_seq[j>>1] = (char)val;
    }
   }
   act->typei = keytype_from_text(act->typen, ((void*)0));
   if (0 == act->typei) {
    printf("%s: line %d: key %d, %s not supported - ignoring\n",
     keyfile, line_cnt,
     act->key_id, act->typen);
    goodline = 0;
   }
  }
  if (goodline) {
   act->next = ((void*)0);
   if (((void*)0) == prev)
    *keys = act;
   else
    prev->next = act;
   prev = act;
   key_cnt++;
  } else {
   if (debug) {
    printf("auth_init: scanf %d items, skipping line %d.",
     scan_cnt, line_cnt);
   }
   free(act);
  }
  line_cnt++;
 }
 fclose(keyf);

 key_ptr = *keys;
 return key_cnt;
}
