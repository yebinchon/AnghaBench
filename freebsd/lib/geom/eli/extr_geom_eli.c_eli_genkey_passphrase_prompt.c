
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpbuf ;
struct gctl_req {int dummy; } ;


 int BUFSIZE ;
 int RPP_ECHO_OFF ;
 int RPP_REQUIRE_TTY ;
 int errno ;
 int explicit_bzero (char*,int) ;
 int fprintf (int ,char*) ;
 int gctl_error (struct gctl_req*,char*,int ) ;
 char* readpassphrase (char*,char*,int,int) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (int ) ;

__attribute__((used)) static int
eli_genkey_passphrase_prompt(struct gctl_req *req, bool new, char *passbuf,
    size_t passbufsize)
{
 char *p;

 for (;;) {
  p = readpassphrase(
      new ? "Enter new passphrase: " : "Enter passphrase: ",
      passbuf, passbufsize, RPP_ECHO_OFF | RPP_REQUIRE_TTY);
  if (p == ((void*)0)) {
   explicit_bzero(passbuf, passbufsize);
   gctl_error(req, "Cannot read passphrase: %s.",
       strerror(errno));
   return (-1);
  }

  if (new) {
   char tmpbuf[BUFSIZE];

   p = readpassphrase("Reenter new passphrase: ",
       tmpbuf, sizeof(tmpbuf),
       RPP_ECHO_OFF | RPP_REQUIRE_TTY);
   if (p == ((void*)0)) {
    explicit_bzero(passbuf, passbufsize);
    gctl_error(req,
        "Cannot read passphrase: %s.",
        strerror(errno));
    return (-1);
   }

   if (strcmp(passbuf, tmpbuf) != 0) {
    explicit_bzero(passbuf, passbufsize);
    fprintf(stderr, "They didn't match.\n");
    continue;
   }
   explicit_bzero(tmpbuf, sizeof(tmpbuf));
  }
  return (0);
 }

}
