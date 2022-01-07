
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct url {int doc; } ;
struct TYPE_5__ {int user; int password; } ;
typedef TYPE_1__ http_auth_params_t ;
struct TYPE_6__ {char* opaque; int nc; int nonce; int realm; scalar_t__* qop; scalar_t__* algo; } ;
typedef TYPE_2__ http_auth_challenge_t ;
typedef int conn_t ;
typedef int HASHHEX ;


 int DEBUGF (char*,...) ;
 int DigestCalcHA1 (scalar_t__*,int ,int ,int ,int ,char*,int ) ;
 int DigestCalcResponse (int ,int ,char*,char*,scalar_t__*,char*,int ,char*,int ) ;
 scalar_t__ asprintf (char**,char*,char*,scalar_t__*,char*,char*) ;
 int free (char*) ;
 int getpid () ;
 int http_cmd (int *,char*,char const*,int ,int ,int ,int ,int ,char*,...) ;
 int sprintf (char*,char*,int,...) ;
 void* strdup (char*) ;
 scalar_t__ time (int ) ;

__attribute__((used)) static int
http_digest_auth(conn_t *conn, const char *hdr, http_auth_challenge_t *c,
   http_auth_params_t *parms, struct url *url)
{
 int r;
 char noncecount[10];
 char cnonce[40];
 char *options = ((void*)0);

 if (!c->realm || !c->nonce) {
  DEBUGF("realm/nonce not set in challenge\n");
  return(-1);
 }
 if (!c->algo)
  c->algo = strdup("");

 if (asprintf(&options, "%s%s%s%s",
     *c->algo? ",algorithm=" : "", c->algo,
     c->opaque? ",opaque=" : "", c->opaque?c->opaque:"") < 0)
  return (-1);

 if (!c->qop) {
  c->qop = strdup("");
  *noncecount = 0;
  *cnonce = 0;
 } else {
  c->nc++;
  sprintf(noncecount, "%08x", c->nc);

  sprintf(cnonce, "%x%lx", getpid(), (unsigned long)time(0));
 }

 HASHHEX HA1;
 DigestCalcHA1(c->algo, parms->user, c->realm,
        parms->password, c->nonce, cnonce, HA1);
 DEBUGF("HA1: [%s]\n", HA1);
 HASHHEX digest;
 DigestCalcResponse(HA1, c->nonce, noncecount, cnonce, c->qop,
      "GET", url->doc, "", digest);

 if (c->qop[0]) {
  r = http_cmd(conn, "%s: Digest username=\"%s\",realm=\"%s\","
        "nonce=\"%s\",uri=\"%s\",response=\"%s\","
        "qop=\"auth\", cnonce=\"%s\", nc=%s%s",
        hdr, parms->user, c->realm,
        c->nonce, url->doc, digest,
        cnonce, noncecount, options);
 } else {
  r = http_cmd(conn, "%s: Digest username=\"%s\",realm=\"%s\","
        "nonce=\"%s\",uri=\"%s\",response=\"%s\"%s",
        hdr, parms->user, c->realm,
        c->nonce, url->doc, digest, options);
 }
 if (options)
  free(options);
 return (r);
}
