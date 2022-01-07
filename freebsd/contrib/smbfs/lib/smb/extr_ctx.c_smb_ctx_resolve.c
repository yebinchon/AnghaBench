
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_nb {int snb_len; } ;
struct sockaddr {int dummy; } ;
struct smbioc_ossn {scalar_t__* ioc_srvname; scalar_t__* ioc_localcs; scalar_t__* ioc_servercs; scalar_t__* ioc_password; int ioc_svlen; int ioc_lolen; struct sockaddr* ioc_local; struct sockaddr* ioc_server; int ioc_user; } ;
struct smbioc_oshare {scalar_t__* ioc_share; } ;
struct smb_ctx {int ct_flags; scalar_t__ ct_minlevel; scalar_t__* ct_locname; TYPE_1__* ct_nb; int ct_smbtcpport; scalar_t__ ct_srvaddr; struct smbioc_oshare ct_sh; struct smbioc_ossn ct_ssn; } ;
struct nb_name {int nn_scope; int nn_type; int nn_name; } ;
struct TYPE_3__ {int nb_scope; } ;


 int EINVAL ;
 int NBERROR (int ) ;
 int NBERR_NAMETOOLONG ;
 int NBT_SERVER ;
 int NBT_WKSTA ;
 int NB_NAMELEN ;
 int SMBCF_NOPWD ;
 int SMBCF_RESOLVED ;
 scalar_t__ SMBL_SHARE ;
 char* getpass (char*) ;
 int kiconv_add_xlat16_cspairs (scalar_t__*,scalar_t__*) ;
 int nb_ctx_resolve (TYPE_1__*) ;
 int nb_getlocalname (scalar_t__*) ;
 int nb_resolvehost_in (scalar_t__,struct sockaddr**,int ) ;
 int nb_snbfree (struct sockaddr*) ;
 int nb_sockaddr (struct sockaddr*,struct nb_name*,struct sockaddr_nb**) ;
 int nbns_resolvename (scalar_t__*,TYPE_1__*,struct sockaddr**) ;
 int nls_lower ;
 int nls_str_upper (scalar_t__*,scalar_t__*) ;
 int nls_upper ;
 int smb_addiconvtbl (char*,scalar_t__*,int ) ;
 int smb_ctx_setpassword (struct smb_ctx*,char*) ;
 int smb_error (char*,int,...) ;
 int strcpy (scalar_t__*,char*) ;
 int strlcpy (int ,scalar_t__*,int) ;
 int strlen (scalar_t__*) ;

int
smb_ctx_resolve(struct smb_ctx *ctx)
{
 struct smbioc_ossn *ssn = &ctx->ct_ssn;
 struct smbioc_oshare *sh = &ctx->ct_sh;
 struct nb_name nn;
 struct sockaddr *sap;
 struct sockaddr_nb *salocal, *saserver;
 char *cp;
 int error = 0;

 ctx->ct_flags &= ~SMBCF_RESOLVED;
 if (ssn->ioc_srvname[0] == 0) {
  smb_error("no server name specified", 0);
  return EINVAL;
 }
 if (ctx->ct_minlevel >= SMBL_SHARE && sh->ioc_share[0] == 0) {
  smb_error("no share name specified for %s@%s",
      0, ssn->ioc_user, ssn->ioc_srvname);
  return EINVAL;
 }
 error = nb_ctx_resolve(ctx->ct_nb);
 if (error)
  return error;
 if (ssn->ioc_localcs[0] == 0)
  strcpy(ssn->ioc_localcs, "ISO8859-1");
 error = smb_addiconvtbl("tolower", ssn->ioc_localcs, nls_lower);
 if (error)
  return error;
 error = smb_addiconvtbl("toupper", ssn->ioc_localcs, nls_upper);
 if (error)
  return error;
 if (ssn->ioc_servercs[0] != 0) {
  error = kiconv_add_xlat16_cspairs
   (ssn->ioc_servercs, ssn->ioc_localcs);
  if (error) return error;
 }
 if (ctx->ct_srvaddr) {
  error = nb_resolvehost_in(ctx->ct_srvaddr, &sap, ctx->ct_smbtcpport);
 } else {
  error = nbns_resolvename(ssn->ioc_srvname, ctx->ct_nb, &sap);
 }
 if (error) {
  smb_error("can't get server address", error);
  return error;
 }
 nn.nn_scope = ctx->ct_nb->nb_scope;
 nn.nn_type = NBT_SERVER;
 if (strlen(ssn->ioc_srvname) > NB_NAMELEN)
  return NBERROR(NBERR_NAMETOOLONG);
 strlcpy(nn.nn_name, ssn->ioc_srvname, sizeof(nn.nn_name));
 error = nb_sockaddr(sap, &nn, &saserver);
 nb_snbfree(sap);
 if (error) {
  smb_error("can't allocate server address", error);
  return error;
 }
 ssn->ioc_server = (struct sockaddr*)saserver;
 if (ctx->ct_locname[0] == 0) {
  error = nb_getlocalname(ctx->ct_locname);
  if (error) {
   smb_error("can't get local name", error);
   return error;
  }
  nls_str_upper(ctx->ct_locname, ctx->ct_locname);
 }




 strlcpy(nn.nn_name, ctx->ct_locname, NB_NAMELEN);
 nn.nn_type = NBT_WKSTA;
 nn.nn_scope = ctx->ct_nb->nb_scope;
 error = nb_sockaddr(((void*)0), &nn, &salocal);
 if (error) {
  nb_snbfree((struct sockaddr*)saserver);
  smb_error("can't allocate local address", error);
  return error;
 }
 ssn->ioc_local = (struct sockaddr*)salocal;
 ssn->ioc_lolen = salocal->snb_len;
 ssn->ioc_svlen = saserver->snb_len;
 if (ssn->ioc_password[0] == 0 && (ctx->ct_flags & SMBCF_NOPWD) == 0) {
  cp = getpass("Password:");
  error = smb_ctx_setpassword(ctx, cp);
  if (error)
   return error;
 }
 ctx->ct_flags |= SMBCF_RESOLVED;
 return 0;
}
