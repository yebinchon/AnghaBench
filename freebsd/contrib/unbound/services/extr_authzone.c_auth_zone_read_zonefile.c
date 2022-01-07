
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sldns_file_parse_state {int default_ttl; int origin_len; int origin; } ;
struct config_file {scalar_t__* chrootdir; } ;
struct auth_zone {scalar_t__* zonefile; int namelen; int name; int data; scalar_t__ zone_is_slave; } ;
typedef int state ;
typedef int rr ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int LDNS_RR_BUF_SIZE ;
 scalar_t__ VERB_ALGO ;
 int auth_data_cmp ;
 int auth_data_del ;
 int az_parse_file (struct auth_zone*,int *,int *,int,struct sldns_file_parse_state*,char*,int ,struct config_file*) ;
 int dname_str (int ,char*) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int log_err (char*,char*,char*,...) ;
 int memcpy (int ,int ,int) ;
 int memset (struct sldns_file_parse_state*,int ,int) ;
 int rbtree_init (int *,int *) ;
 char* sldns_wire2str_dname (int ,int) ;
 int strerror (scalar_t__) ;
 int strlen (scalar_t__*) ;
 scalar_t__ strncmp (char*,scalar_t__*,int ) ;
 int traverse_postorder (int *,int ,int *) ;
 int verbose (scalar_t__,char*,char*,char*) ;
 scalar_t__ verbosity ;

int
auth_zone_read_zonefile(struct auth_zone* z, struct config_file* cfg)
{
 uint8_t rr[LDNS_RR_BUF_SIZE];
 struct sldns_file_parse_state state;
 char* zfilename;
 FILE* in;
 if(!z || !z->zonefile || z->zonefile[0]==0)
  return 1;

 zfilename = z->zonefile;
 if(cfg->chrootdir && cfg->chrootdir[0] && strncmp(zfilename,
  cfg->chrootdir, strlen(cfg->chrootdir)) == 0)
  zfilename += strlen(cfg->chrootdir);
 if(verbosity >= VERB_ALGO) {
  char nm[255+1];
  dname_str(z->name, nm);
  verbose(VERB_ALGO, "read zonefile %s for %s", zfilename, nm);
 }
 in = fopen(zfilename, "r");
 if(!in) {
  char* n = sldns_wire2str_dname(z->name, z->namelen);
  if(z->zone_is_slave && errno == ENOENT) {

   verbose(VERB_ALGO, "no zonefile %s for %s",
    zfilename, n?n:"error");
   free(n);
   return 1;
  }
  log_err("cannot open zonefile %s for %s: %s",
   zfilename, n?n:"error", strerror(errno));
  free(n);
  return 0;
 }


 traverse_postorder(&z->data, auth_data_del, ((void*)0));
 rbtree_init(&z->data, &auth_data_cmp);

 memset(&state, 0, sizeof(state));

 state.default_ttl = 3600;

 if(z->namelen <= sizeof(state.origin)) {
  memcpy(state.origin, z->name, z->namelen);
  state.origin_len = z->namelen;
 }

 if(!az_parse_file(z, in, rr, sizeof(rr), &state, zfilename, 0, cfg)) {
  char* n = sldns_wire2str_dname(z->name, z->namelen);
  log_err("error parsing zonefile %s for %s",
   zfilename, n?n:"error");
  free(n);
  fclose(in);
  return 0;
 }
 fclose(in);
 return 1;
}
