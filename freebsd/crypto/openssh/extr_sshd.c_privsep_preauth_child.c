
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef scalar_t__ gid_t ;
struct TYPE_5__ {scalar_t__ gss_authentication; } ;
struct TYPE_4__ {scalar_t__ pw_gid; scalar_t__ pw_uid; } ;


 int _PATH_PRIVSEP_CHROOT_DIR ;
 int chdir (char*) ;
 int chroot (int ) ;
 int debug3 (char*,int ,int ) ;
 int demote_sensitive_data () ;
 int errno ;
 int fatal (char*,int ,...) ;
 TYPE_3__ options ;
 int permanently_set_uid (TYPE_1__*) ;
 int privsep_challenge_enable () ;
 scalar_t__ privsep_chroot ;
 TYPE_1__* privsep_pw ;
 int reseed_prngs () ;
 scalar_t__ setgroups (int,scalar_t__*) ;
 int ssh_gssapi_prepare_supported_oids () ;
 int strerror (int ) ;

__attribute__((used)) static void
privsep_preauth_child(void)
{
 gid_t gidset[1];


 privsep_challenge_enable();







 reseed_prngs();


 demote_sensitive_data();


 if (privsep_chroot) {

  if (chroot(_PATH_PRIVSEP_CHROOT_DIR) == -1)
   fatal("chroot(\"%s\"): %s", _PATH_PRIVSEP_CHROOT_DIR,
       strerror(errno));
  if (chdir("/") == -1)
   fatal("chdir(\"/\"): %s", strerror(errno));


  debug3("privsep user:group %u:%u", (u_int)privsep_pw->pw_uid,
      (u_int)privsep_pw->pw_gid);
  gidset[0] = privsep_pw->pw_gid;
  if (setgroups(1, gidset) < 0)
   fatal("setgroups: %.100s", strerror(errno));
  permanently_set_uid(privsep_pw);
 }
}
