
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmpfile ;
struct module_env {TYPE_3__* auth_zones; struct config_file* cfg; } ;
struct config_file {char* chrootdir; } ;
struct auth_zone {scalar_t__* zonefile; int lock; } ;
struct auth_xfer {TYPE_2__* task_transfer; int lock; int dclass; int namelen; int name; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {TYPE_1__* master; } ;
struct TYPE_4__ {scalar_t__ http; } ;


 int VERB_ALGO ;
 struct auth_zone* auth_zone_find (TYPE_3__*,int ,int ,int ) ;
 int auth_zone_write_chunks (struct auth_xfer*,char*) ;
 int auth_zone_write_file (struct auth_zone*,char*) ;
 int errno ;
 scalar_t__ getpid () ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int log_err (char*,char*,char*,int ) ;
 scalar_t__ rename (char*,char*) ;
 int snprintf (char*,int,char*,char*,unsigned int) ;
 int strerror (int ) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,scalar_t__) ;
 int unlink (char*) ;
 int verbose (int ,char*,char*) ;

__attribute__((used)) static void
xfr_write_after_update(struct auth_xfer* xfr, struct module_env* env)
{
 struct config_file* cfg = env->cfg;
 struct auth_zone* z;
 char tmpfile[1024];
 char* zfilename;
 lock_basic_unlock(&xfr->lock);



 lock_rw_rdlock(&env->auth_zones->lock);
 z = auth_zone_find(env->auth_zones, xfr->name, xfr->namelen,
  xfr->dclass);
 if(!z) {
  lock_rw_unlock(&env->auth_zones->lock);

  lock_basic_lock(&xfr->lock);
  return;
 }
 lock_rw_rdlock(&z->lock);
 lock_basic_lock(&xfr->lock);
 lock_rw_unlock(&env->auth_zones->lock);

 if(z->zonefile == ((void*)0) || z->zonefile[0] == 0) {
  lock_rw_unlock(&z->lock);

  return;
 }
 zfilename = z->zonefile;
 if(cfg->chrootdir && cfg->chrootdir[0] && strncmp(zfilename,
  cfg->chrootdir, strlen(cfg->chrootdir)) == 0)
  zfilename += strlen(cfg->chrootdir);


 if((size_t)strlen(zfilename) + 16 > sizeof(tmpfile)) {
  verbose(VERB_ALGO, "tmpfilename too long, cannot update "
   " zonefile %s", zfilename);
  lock_rw_unlock(&z->lock);
  return;
 }
 snprintf(tmpfile, sizeof(tmpfile), "%s.tmp%u", zfilename,
  (unsigned)getpid());
 if(xfr->task_transfer->master->http) {

  if(!auth_zone_write_chunks(xfr, tmpfile)) {
   unlink(tmpfile);
   lock_rw_unlock(&z->lock);
  }
 } else if(!auth_zone_write_file(z, tmpfile)) {
  unlink(tmpfile);
  lock_rw_unlock(&z->lock);
  return;
 }
 if(rename(tmpfile, zfilename) < 0) {
  log_err("could not rename(%s, %s): %s", tmpfile, zfilename,
   strerror(errno));
  unlink(tmpfile);
  lock_rw_unlock(&z->lock);
  return;
 }
 lock_rw_unlock(&z->lock);
}
