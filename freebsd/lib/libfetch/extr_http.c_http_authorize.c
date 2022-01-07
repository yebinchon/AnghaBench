
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct url {int dummy; } ;
struct TYPE_8__ {int password; int user; scalar_t__ scheme; } ;
typedef TYPE_1__ http_auth_params_t ;
struct TYPE_9__ {int count; TYPE_3__** challenges; } ;
typedef TYPE_2__ http_auth_challenges_t ;
struct TYPE_10__ {scalar_t__ scheme; } ;
typedef TYPE_3__ http_auth_challenge_t ;
typedef int conn_t ;


 int DEBUGF (char*) ;
 scalar_t__ HTTPAS_DIGEST ;
 int http_basic_auth (int *,char const*,int ,int ) ;
 int http_digest_auth (int *,char const*,TYPE_3__*,TYPE_1__*,struct url*) ;
 scalar_t__ strcasecmp (scalar_t__,char*) ;

__attribute__((used)) static int
http_authorize(conn_t *conn, const char *hdr, http_auth_challenges_t *cs,
        http_auth_params_t *parms, struct url *url)
{
 http_auth_challenge_t *digest = ((void*)0);
 int i;


 if (!parms->user || !parms->password) {
  DEBUGF("NULL usr or pass\n");
  return (-1);
 }


 for (i = 0; i < cs->count; i++) {
  if (cs->challenges[i]->scheme == HTTPAS_DIGEST)
   digest = cs->challenges[i];
 }


 if (!digest &&
     (parms->scheme && strcasecmp(parms->scheme, "digest") == 0)) {
  DEBUGF("Digest auth in env, not supported by peer\n");
  return (-1);
 }





 if (!digest ||
     (parms->scheme && strcasecmp(parms->scheme, "basic") == 0))
  return (http_basic_auth(conn,hdr,parms->user,parms->password));


 return (http_digest_auth(conn, hdr, digest, parms, url));
}
