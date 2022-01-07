
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int sockaddr_u ;
typedef int keystr ;
typedef int keyid_t ;
struct TYPE_4__ {int keyid; int keytype; size_t seclen; struct TYPE_4__* next; int * keyacclist; int secbuf; } ;
typedef TYPE_1__ KeyDataT ;
typedef int FILE ;


 int AF_UNSPEC ;
 int * EVP_get_digestbynid (int) ;
 int INIT_SSL () ;
 int INSIST (int) ;
 scalar_t__ IS_IPV4 (int *) ;
 scalar_t__ IS_IPV6 (int *) ;
 int KEY_TYPE_MD5 ;
 int LOG_ERR ;
 int MD5auth_setkey (int,int,int ,size_t,int *) ;
 int NID_cmac ;
 int NTP_MAXKEY ;
 unsigned int UINT_MAX ;
 int atoi (char*) ;
 int auth_delkeys () ;
 TYPE_1__* emalloc (int) ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int free_keydata (TYPE_1__*) ;
 scalar_t__ is_ip_address (char*,int ,int *) ;
 int isdigit (unsigned char) ;
 int * keyacc_new_push (int *,int *,unsigned int) ;
 int keytype_from_text (char*,int *) ;
 int log_maybe (scalar_t__*,char*,...) ;
 int memcpy (int ,...) ;
 size_t min (size_t,int) ;
 int msyslog (int ,char*,char const*,...) ;
 scalar_t__ nerr_maxlimit ;
 char* nexttok (char**) ;
 char* strchr (char const*,int) ;
 size_t strlen (char*) ;
 int tolower (unsigned char) ;

int
authreadkeys(
 const char *file
 )
{
 FILE *fp;
 char *line;
 char *token;
 keyid_t keyno;
 int keytype;
 char buf[512];
 u_char keystr[32];
 size_t len;
 size_t j;
 u_int nerr;
 KeyDataT *list = ((void*)0);
 KeyDataT *next = ((void*)0);




 fp = fopen(file, "r");
 if (fp == ((void*)0)) {
  msyslog(LOG_ERR, "authreadkeys: file '%s': %m",
      file);
  goto onerror;
 }
 INIT_SSL();






 nerr = 0;
 while ((line = fgets(buf, sizeof buf, fp)) != ((void*)0)) {
  if (nerr > nerr_maxlimit)
   break;
  token = nexttok(&line);
  if (token == ((void*)0))
   continue;




  keyno = atoi(token);
  if (keyno < 1) {
   log_maybe(&nerr,
      "authreadkeys: cannot change key %s",
      token);
   continue;
  }

  if (keyno > NTP_MAXKEY) {
   log_maybe(&nerr,
      "authreadkeys: key %s > %d reserved for Autokey",
      token, NTP_MAXKEY);
   continue;
  }




  token = nexttok(&line);
  if (token == ((void*)0)) {
   log_maybe(&nerr,
      "authreadkeys: no key type for key %d",
      keyno);
   continue;
  }
  if (!(*token == 'M' || *token == 'm')) {
   log_maybe(((void*)0),
      "authreadkeys: invalid type for key %d",
      keyno);
   keytype = 0;
  } else {
   keytype = KEY_TYPE_MD5;
  }
  token = nexttok(&line);
  if (token == ((void*)0)) {
   log_maybe(&nerr,
      "authreadkeys: no key for key %d", keyno);
   continue;
  }
  next = ((void*)0);
  len = strlen(token);
  if (len <= 20) {
   next = emalloc(sizeof(KeyDataT) + len);
   next->keyacclist = ((void*)0);
   next->keyid = keyno;
   next->keytype = keytype;
   next->seclen = len;
   memcpy(next->secbuf, token, len);
  } else {
   static const char hex[] = "0123456789abcdef";
   u_char temp;
   char *ptr;
   size_t jlim;

   jlim = min(len, 2 * sizeof(keystr));
   for (j = 0; j < jlim; j++) {
    ptr = strchr(hex, tolower((unsigned char)token[j]));
    if (ptr == ((void*)0))
     break;
    temp = (u_char)(ptr - hex);
    if (j & 1)
     keystr[j / 2] |= temp;
    else
     keystr[j / 2] = temp << 4;
   }
   if (j < jlim) {
    log_maybe(&nerr,
       "authreadkeys: invalid hex digit for key %d",
       keyno);
    continue;
   }
   len = jlim/2;
   next = emalloc(sizeof(KeyDataT) + len);
   next->keyacclist = ((void*)0);
   next->keyid = keyno;
   next->keytype = keytype;
   next->seclen = len;
   memcpy(next->secbuf, keystr, len);
  }

  token = nexttok(&line);
  if (token != ((void*)0)) {
   char *tp = token;

   while (tp) {
    char *i;
    char *snp;
    unsigned int snbits;
    sockaddr_u addr;

    i = strchr(tp, (int)',');
    if (i) {
     *i = '\0';
    }
    snp = strchr(tp, (int)'/');
    if (snp) {
     char *sp;

     *snp++ = '\0';
     snbits = 0;
     sp = snp;

     while (*sp != '\0') {
      if (!isdigit((unsigned char)*sp))
          break;
      if (snbits > 1000)
          break;
      snbits = 10 * snbits + (*sp++ - '0');
     }
     if (*sp != '\0') {
      log_maybe(&nerr,
         "authreadkeys: Invalid character in subnet specification for <%s/%s> in key %d",
         sp, snp, keyno);
      goto nextip;
     }
    } else {
     snbits = UINT_MAX;
    }

    if (is_ip_address(tp, AF_UNSPEC, &addr)) {

        if ((snbits < UINT_MAX) &&
     ( (IS_IPV4(&addr) && snbits > 32) ||
       (IS_IPV6(&addr) && snbits > 128))) {
      log_maybe(((void*)0),
         "authreadkeys: excessive subnet mask <%s/%s> for key %d",
         tp, snp, keyno);
        }
        next->keyacclist = keyacc_new_push(
     next->keyacclist, &addr, snbits);
    } else {
     log_maybe(&nerr,
        "authreadkeys: invalid IP address <%s> for key %d",
        tp, keyno);
    }

   nextip:
    if (i) {
     tp = i + 1;
    } else {
     tp = 0;
    }
   }
  }


  if (0 == keytype) {
   free_keydata(next);
   next = ((void*)0);
   continue;
  }

  INSIST(((void*)0) != next);
  next->next = list;
  list = next;
 }
 fclose(fp);
 if (nerr > 0) {
  const char * why = "";
  if (nerr > nerr_maxlimit)
   why = " (emergency break)";
  msyslog(LOG_ERR,
   "authreadkeys: rejecting file '%s' after %u error(s)%s",
   file, nerr, why);
  goto onerror;
 }


 auth_delkeys();

 while (((void*)0) != (next = list)) {
  list = next->next;
  MD5auth_setkey(next->keyid, next->keytype,
          next->secbuf, next->seclen, next->keyacclist);
  next->keyacclist = ((void*)0);
  free_keydata(next);
 }
 return (1);

  onerror:

 while (((void*)0) != (next = list)) {
  list = next->next;
  free_keydata(next);
 }
 return (0);
}
