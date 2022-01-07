
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_4__ {scalar_t__ length; int * data; } ;
struct TYPE_5__ {TYPE_1__ saltvalue; int salttype; } ;
typedef TYPE_2__ krb5_salt ;
typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
typedef int hdb_master_key ;
typedef int buf ;


 scalar_t__ ENOENT ;
 int KRB5_PW_SALT ;
 scalar_t__ UI_UTIL_read_pw_string (char*,int,char*,int) ;
 int args ;
 int asprintf (char**,char*,char*) ;
 int context ;
 scalar_t__ convert_flag ;
 int enctype_str ;
 scalar_t__ errno ;
 int exit (int) ;
 int free (char*) ;
 scalar_t__ hdb_add_master_key (int ,int *,int *) ;
 char* hdb_db_dir (int ) ;
 int hdb_free_master_key (int ,int ) ;
 scalar_t__ hdb_read_master_key (int ,char*,int *) ;
 scalar_t__ hdb_write_master_key (int ,char*,int ) ;
 scalar_t__ help_flag ;
 char* keyfile ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_free_keyblock_contents (int ,int *) ;
 scalar_t__ krb5_generate_random_keyblock (int ,int ,int *) ;
 int krb5_program_setup (int *,int,char**,int ,int ,int *) ;
 int krb5_std_usage (int ,int ,int ) ;
 scalar_t__ krb5_string_to_enctype (int ,int ,int *) ;
 int krb5_string_to_key_salt (int ,int ,char*,TYPE_2__,int *) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int krb5_warnx (int ,char*,char*) ;
 scalar_t__ link (char*,char*) ;
 int master_key_fd ;
 int num_args ;
 int print_version (int *) ;
 scalar_t__ random_key_flag ;
 size_t read (int,char*,int) ;
 scalar_t__ rename (char*,char*) ;
 size_t strcspn (char*,char*) ;
 scalar_t__ unlink (char*) ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
    char buf[1024];
    krb5_error_code ret;

    krb5_enctype enctype;

    hdb_master_key mkey;

    krb5_program_setup(&context, argc, argv, args, num_args, ((void*)0));

    if(help_flag)
 krb5_std_usage(0, args, num_args);
    if(version_flag){
 print_version(((void*)0));
 exit(0);
    }

    if (master_key_fd != -1 && random_key_flag)
 krb5_errx(context, 1, "random-key and master-key-fd "
    "is mutual exclusive");

    if (keyfile == ((void*)0))
 asprintf(&keyfile, "%s/m-key", hdb_db_dir(context));

    ret = krb5_string_to_enctype(context, enctype_str, &enctype);
    if(ret)
 krb5_err(context, 1, ret, "krb5_string_to_enctype");

    ret = hdb_read_master_key(context, keyfile, &mkey);
    if(ret && ret != ENOENT)
 krb5_err(context, 1, ret, "reading master key from %s", keyfile);

    if (convert_flag) {
 if (ret)
     krb5_err(context, 1, ret, "reading master key from %s", keyfile);
    } else {
 krb5_keyblock key;
 krb5_salt salt;
 salt.salttype = KRB5_PW_SALT;

 salt.saltvalue.data = ((void*)0);
 salt.saltvalue.length = 0;
 if (random_key_flag) {
     ret = krb5_generate_random_keyblock(context, enctype, &key);
     if (ret)
  krb5_err(context, 1, ret, "krb5_generate_random_keyblock");

 } else {
     if(master_key_fd != -1) {
  ssize_t n;
  n = read(master_key_fd, buf, sizeof(buf));
  if(n <= 0)
      krb5_err(context, 1, errno, "failed to read passphrase");
  buf[n] = '\0';
  buf[strcspn(buf, "\r\n")] = '\0';

     } else {
  if(UI_UTIL_read_pw_string(buf, sizeof(buf), "Master key: ", 1))
      exit(1);
     }
     krb5_string_to_key_salt(context, enctype, buf, salt, &key);
 }
 ret = hdb_add_master_key(context, &key, &mkey);

 krb5_free_keyblock_contents(context, &key);

    }

    {
 char *new, *old;
 asprintf(&old, "%s.old", keyfile);
 asprintf(&new, "%s.new", keyfile);
 if(unlink(new) < 0 && errno != ENOENT) {
     ret = errno;
     goto out;
 }
 krb5_warnx(context, "writing key to `%s'", keyfile);
 ret = hdb_write_master_key(context, new, mkey);
 if(ret)
     unlink(new);
 else {

     unlink(old);
     if(link(keyfile, old) < 0 && errno != ENOENT) {
  ret = errno;
  unlink(new);
     } else {

  if(rename(new, keyfile) < 0) {
      ret = errno;
  }

     }

 }
    out:
 free(old);
 free(new);
 if(ret)
     krb5_warn(context, errno, "writing master key file");
    }

    hdb_free_master_key(context, mkey);

    exit(ret != 0);
}
