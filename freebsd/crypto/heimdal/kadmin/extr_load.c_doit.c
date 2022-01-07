
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct entry {char* principal; char* key; char* created; char* modified; char* valid_start; char* valid_end; char* pw_end; char* max_life; char* max_renew; char* flags; char* generation; char* extensions; } ;
typedef int s ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_13__ {int extensions; int generation; int flags; int max_renew; int max_life; int pw_end; int valid_end; int valid_start; int modified_by; int created_by; int principal; } ;
struct TYPE_11__ {TYPE_7__ entry; } ;
typedef TYPE_1__ hdb_entry_ex ;
typedef int ent ;
struct TYPE_12__ {scalar_t__ (* hdb_open ) (int ,TYPE_2__*,int,int) ;scalar_t__ (* hdb_store ) (int ,TYPE_2__*,int ,TYPE_1__*) ;int (* hdb_close ) (int ,TYPE_2__*) ;} ;
typedef TYPE_2__ HDB ;
typedef int FILE ;


 int HDB_F_REPLACE ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 TYPE_2__* _kadm5_s_get_db (int ) ;
 int context ;
 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*,int,char const*,...) ;
 int hdb_free_entry (int ,TYPE_1__*) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ kadm5_log_truncate (int ) ;
 int kadm_handle ;
 int krb5_free_error_message (int ,char const*) ;
 char* krb5_get_error_message (int ,scalar_t__) ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;
 int krb5_warn (int ,scalar_t__,char*,...) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_event (int *,char*) ;
 int parse_event_alloc (int *,char*) ;
 int parse_extensions (char*,int *) ;
 int parse_generation (char*,int *) ;
 int parse_hdbflags2int (int *,char*) ;
 int parse_integer_alloc (int *,char*) ;
 scalar_t__ parse_keys (TYPE_7__*,char*) ;
 int parse_time_string_alloc (int *,char*) ;
 char* skip_next (char*) ;
 int stderr ;
 scalar_t__ stub1 (int ,TYPE_2__*,int,int) ;
 scalar_t__ stub2 (int ,TYPE_2__*,int ,TYPE_1__*) ;
 int stub3 (int ,TYPE_2__*) ;

__attribute__((used)) static int
doit(const char *filename, int mergep)
{
    krb5_error_code ret;
    FILE *f;
    char s[8192];
    char *p;
    int line;
    int flags = O_RDWR;
    struct entry e;
    hdb_entry_ex ent;
    HDB *db = _kadm5_s_get_db(kadm_handle);

    f = fopen(filename, "r");
    if(f == ((void*)0)){
 krb5_warn(context, errno, "fopen(%s)", filename);
 return 1;
    }
    ret = kadm5_log_truncate (kadm_handle);
    if (ret) {
 fclose (f);
 krb5_warn(context, ret, "kadm5_log_truncate");
 return 1;
    }

    if(!mergep)
 flags |= O_CREAT | O_TRUNC;
    ret = db->hdb_open(context, db, flags, 0600);
    if(ret){
 krb5_warn(context, ret, "hdb_open");
 fclose(f);
 return 1;
    }
    line = 0;
    ret = 0;
    while(fgets(s, sizeof(s), f) != ((void*)0)) {
 line++;

 p = s;
 while (isspace((unsigned char)*p))
     p++;

 e.principal = p;
 for(p = s; *p; p++){
     if(*p == '\\')
  p++;
     else if(isspace((unsigned char)*p)) {
  *p = 0;
  break;
     }
 }
 p = skip_next(p);

 e.key = p;
 p = skip_next(p);

 e.created = p;
 p = skip_next(p);

 e.modified = p;
 p = skip_next(p);

 e.valid_start = p;
 p = skip_next(p);

 e.valid_end = p;
 p = skip_next(p);

 e.pw_end = p;
 p = skip_next(p);

 e.max_life = p;
 p = skip_next(p);

 e.max_renew = p;
 p = skip_next(p);

 e.flags = p;
 p = skip_next(p);

 e.generation = p;
 p = skip_next(p);

 e.extensions = p;
 skip_next(p);

 memset(&ent, 0, sizeof(ent));
 ret = krb5_parse_name(context, e.principal, &ent.entry.principal);
 if(ret) {
     const char *msg = krb5_get_error_message(context, ret);
     fprintf(stderr, "%s:%d:%s (%s)\n",
      filename, line, msg, e.principal);
     krb5_free_error_message(context, msg);
     continue;
 }

 if (parse_keys(&ent.entry, e.key)) {
     fprintf (stderr, "%s:%d:error parsing keys (%s)\n",
       filename, line, e.key);
     hdb_free_entry (context, &ent);
     continue;
 }

 if (parse_event(&ent.entry.created_by, e.created) == -1) {
     fprintf (stderr, "%s:%d:error parsing created event (%s)\n",
       filename, line, e.created);
     hdb_free_entry (context, &ent);
     continue;
 }
 if (parse_event_alloc (&ent.entry.modified_by, e.modified) == -1) {
     fprintf (stderr, "%s:%d:error parsing event (%s)\n",
       filename, line, e.modified);
     hdb_free_entry (context, &ent);
     continue;
 }
 if (parse_time_string_alloc (&ent.entry.valid_start, e.valid_start) == -1) {
     fprintf (stderr, "%s:%d:error parsing time (%s)\n",
       filename, line, e.valid_start);
     hdb_free_entry (context, &ent);
     continue;
 }
 if (parse_time_string_alloc (&ent.entry.valid_end, e.valid_end) == -1) {
     fprintf (stderr, "%s:%d:error parsing time (%s)\n",
       filename, line, e.valid_end);
     hdb_free_entry (context, &ent);
     continue;
 }
 if (parse_time_string_alloc (&ent.entry.pw_end, e.pw_end) == -1) {
     fprintf (stderr, "%s:%d:error parsing time (%s)\n",
       filename, line, e.pw_end);
     hdb_free_entry (context, &ent);
     continue;
 }

 if (parse_integer_alloc (&ent.entry.max_life, e.max_life) == -1) {
     fprintf (stderr, "%s:%d:error parsing lifetime (%s)\n",
       filename, line, e.max_life);
     hdb_free_entry (context, &ent);
     continue;

 }
 if (parse_integer_alloc (&ent.entry.max_renew, e.max_renew) == -1) {
     fprintf (stderr, "%s:%d:error parsing lifetime (%s)\n",
       filename, line, e.max_renew);
     hdb_free_entry (context, &ent);
     continue;
 }

 if (parse_hdbflags2int (&ent.entry.flags, e.flags) != 1) {
     fprintf (stderr, "%s:%d:error parsing flags (%s)\n",
       filename, line, e.flags);
     hdb_free_entry (context, &ent);
     continue;
 }

 if(parse_generation(e.generation, &ent.entry.generation) == -1) {
     fprintf (stderr, "%s:%d:error parsing generation (%s)\n",
       filename, line, e.generation);
     hdb_free_entry (context, &ent);
     continue;
 }

 if(parse_extensions(e.extensions, &ent.entry.extensions) == -1) {
     fprintf (stderr, "%s:%d:error parsing extension (%s)\n",
       filename, line, e.extensions);
     hdb_free_entry (context, &ent);
     continue;
 }

 ret = db->hdb_store(context, db, HDB_F_REPLACE, &ent);
 hdb_free_entry (context, &ent);
 if (ret) {
     krb5_warn(context, ret, "db_store");
     break;
 }
    }
    db->hdb_close(context, db);
    fclose(f);
    return ret != 0;
}
