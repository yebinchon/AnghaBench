
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct _gss_mech_switch* elements; } ;
struct _gss_mech_switch {char const* gm_name_prefix; TYPE_1__ gm_mech_oid; void* gm_so; } ;
typedef int buf ;
typedef scalar_t__ OM_uint32 ;
typedef int FILE ;


 int OPTSYM (int ) ;
 int RTLD_LOCAL ;
 scalar_t__ SLIST_FIRST (int *) ;
 int SLIST_INSERT_HEAD (int *,struct _gss_mech_switch*,int ) ;
 int SYM (int ) ;
 int _PATH_GSS_MECH ;
 int _gss_mech_oids ;
 int _gss_mechs ;
 scalar_t__ _gss_string_to_oid (char*,TYPE_1__*) ;
 int accept_sec_context ;
 int acquire_cred ;
 int add_cred ;
 int canonicalize_name ;
 int compare_name ;
 int context_time ;
 int delete_sec_context ;
 int display_name ;
 int display_status ;
 int dlclose (void*) ;
 char* dlerror () ;
 void* dlopen (char*,int ) ;
 scalar_t__ dlsym (void*,char*) ;
 int duplicate_name ;
 int export_name ;
 int export_sec_context ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*,char*) ;
 int free (struct _gss_mech_switch*) ;
 int get_mic ;
 int gm_link ;
 scalar_t__ gss_add_oid_set_member (scalar_t__*,TYPE_1__*,int *) ;
 scalar_t__ gss_create_empty_oid_set (scalar_t__*,int *) ;
 int import_name ;
 int import_sec_context ;
 int indicate_mechs ;
 int init_sec_context ;
 int inquire_context ;
 int inquire_cred ;
 int inquire_cred_by_mech ;
 int inquire_cred_by_oid ;
 int inquire_mechs_for_name ;
 int inquire_names_for_mech ;
 int inquire_sec_context_by_oid ;
 scalar_t__ isspace (char) ;
 struct _gss_mech_switch* malloc (int) ;
 int perror (int ) ;
 int pname_to_uid ;
 int process_context_token ;
 int pseudo_random ;
 int release_cred ;
 int release_name ;
 int set_cred_option ;
 int set_sec_context_option ;
 int stderr ;
 char* strsep (char**,char*) ;
 int unwrap ;
 int verify_mic ;
 int wrap ;
 int wrap_size_limit ;

void
_gss_load_mech(void)
{
 OM_uint32 major_status, minor_status;
 FILE *fp;
 char buf[256];
 char *p;
 char *name, *oid, *lib, *kobj;
 struct _gss_mech_switch *m;
 int count;
 void *so;
 const char *(*prefix_fn)(void);

 if (SLIST_FIRST(&_gss_mechs))
  return;

 major_status = gss_create_empty_oid_set(&minor_status,
     &_gss_mech_oids);
 if (major_status)
  return;

 fp = fopen(_PATH_GSS_MECH, "r");
 if (!fp) {
  perror(_PATH_GSS_MECH);
  return;
 }

 count = 0;
 while (fgets(buf, sizeof(buf), fp)) {
  if (*buf == '#')
   continue;
  p = buf;
  name = strsep(&p, "\t\n ");
  if (p) while (isspace(*p)) p++;
  oid = strsep(&p, "\t\n ");
  if (p) while (isspace(*p)) p++;
  lib = strsep(&p, "\t\n ");
  if (p) while (isspace(*p)) p++;
  kobj = strsep(&p, "\t\n ");
  if (!name || !oid || !lib || !kobj)
   continue;

  so = dlopen(lib, RTLD_LOCAL);
  if (!so) {
   fprintf(stderr, "dlopen: %s\n", dlerror());
   continue;
  }

  m = malloc(sizeof(struct _gss_mech_switch));
  if (!m)
   break;
  m->gm_so = so;
  if (_gss_string_to_oid(oid, &m->gm_mech_oid)) {
   free(m);
   continue;
  }

  prefix_fn = (const char *(*)(void))
   dlsym(so, "_gss_name_prefix");
  if (prefix_fn)
   m->gm_name_prefix = prefix_fn();
  else
   m->gm_name_prefix = "gss";

  major_status = gss_add_oid_set_member(&minor_status,
      &m->gm_mech_oid, &_gss_mech_oids);
  if (major_status) {
   free(m->gm_mech_oid.elements);
   free(m);
   continue;
  }

  SYM(acquire_cred);
  SYM(release_cred);
  SYM(init_sec_context);
  SYM(accept_sec_context);
  SYM(process_context_token);
  SYM(delete_sec_context);
  SYM(context_time);
  SYM(get_mic);
  SYM(verify_mic);
  SYM(wrap);
  SYM(unwrap);
  SYM(display_status);
  OPTSYM(indicate_mechs);
  SYM(compare_name);
  SYM(display_name);
  SYM(import_name);
  SYM(export_name);
  SYM(release_name);
  SYM(inquire_cred);
  SYM(inquire_context);
  SYM(wrap_size_limit);
  SYM(add_cred);
  SYM(inquire_cred_by_mech);
  SYM(export_sec_context);
  SYM(import_sec_context);
  SYM(inquire_names_for_mech);
  SYM(inquire_mechs_for_name);
  SYM(canonicalize_name);
  SYM(duplicate_name);
  OPTSYM(inquire_sec_context_by_oid);
  OPTSYM(inquire_cred_by_oid);
  OPTSYM(set_sec_context_option);
  OPTSYM(set_cred_option);
  OPTSYM(pseudo_random);
  OPTSYM(pname_to_uid);

  SLIST_INSERT_HEAD(&_gss_mechs, m, gm_link);
  count++;
  continue;

 bad:
  free(m->gm_mech_oid.elements);
  free(m);
  dlclose(so);
  continue;
 }
 fclose(fp);
}
