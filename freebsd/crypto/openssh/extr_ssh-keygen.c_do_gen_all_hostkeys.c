
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
struct sshkey {int dummy; } ;
struct passwd {char* pw_name; } ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int * _PATH_HOST_DSA_KEY_FILE ;
 int * _PATH_HOST_ECDSA_KEY_FILE ;
 int * _PATH_HOST_ED25519_KEY_FILE ;
 int * _PATH_HOST_RSA_KEY_FILE ;
 int * _PATH_HOST_XMSS_KEY_FILE ;
 char* __progname ;
 scalar_t__ bits ;
 int close (int) ;
 scalar_t__ errno ;
 int error (char*,char*,...) ;
 int fatal (char*,char*) ;
 int fchmod (int,int) ;
 scalar_t__ fclose (int *) ;
 int * fdopen (int,char*) ;
 scalar_t__ ferror (int *) ;
 int fflush (int ) ;
 int fprintf (int *,char*,char*) ;
 int free (char*) ;
 char* hostname ;
 int identity_file ;
 int mkstemp (char*) ;
 int new_format_cipher ;
 int printf (char*,...) ;
 scalar_t__ rename (char*,char*) ;
 int rounds ;
 int snprintf (char*,int,char*,char*,char*) ;
 char* ssh_err (int) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_from_private (struct sshkey*,struct sshkey**) ;
 int sshkey_generate (int,scalar_t__,struct sshkey**) ;
 int sshkey_save_private (struct sshkey*,char*,char*,char*,int ,int ,int ) ;
 int sshkey_type_from_name (char*) ;
 int sshkey_write (struct sshkey*,int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stdout ;
 char* strerror (scalar_t__) ;
 int type_bits_valid (int,int *,scalar_t__*) ;
 int use_new_format ;
 int xasprintf (char**,char*,int ,char*) ;

__attribute__((used)) static void
do_gen_all_hostkeys(struct passwd *pw)
{
 struct {
  char *key_type;
  char *key_type_display;
  char *path;
 } key_types[] = {







  { "ed25519", "ED25519",_PATH_HOST_ED25519_KEY_FILE },



  { ((void*)0), ((void*)0), ((void*)0) }
 };

 int first = 0;
 struct stat st;
 struct sshkey *private, *public;
 char comment[1024], *prv_tmp, *pub_tmp, *prv_file, *pub_file;
 int i, type, fd, r;
 FILE *f;

 for (i = 0; key_types[i].key_type; i++) {
  public = private = ((void*)0);
  prv_tmp = pub_tmp = prv_file = pub_file = ((void*)0);

  xasprintf(&prv_file, "%s%s",
      identity_file, key_types[i].path);


  if (stat(prv_file, &st) == 0) {
   if (st.st_size != 0)
    goto next;
  } else if (errno != ENOENT) {
   error("Could not stat %s: %s", key_types[i].path,
       strerror(errno));
   goto failnext;
  }





  xasprintf(&prv_tmp, "%s%s.XXXXXXXXXX",
      identity_file, key_types[i].path);
  xasprintf(&pub_tmp, "%s%s.pub.XXXXXXXXXX",
      identity_file, key_types[i].path);
  xasprintf(&pub_file, "%s%s.pub",
      identity_file, key_types[i].path);

  if (first == 0) {
   first = 1;
   printf("%s: generating new host keys: ", __progname);
  }
  printf("%s ", key_types[i].key_type_display);
  fflush(stdout);
  type = sshkey_type_from_name(key_types[i].key_type);
  if ((fd = mkstemp(prv_tmp)) == -1) {
   error("Could not save your public key in %s: %s",
       prv_tmp, strerror(errno));
   goto failnext;
  }
  close(fd);
  bits = 0;
  type_bits_valid(type, ((void*)0), &bits);
  if ((r = sshkey_generate(type, bits, &private)) != 0) {
   error("sshkey_generate failed: %s", ssh_err(r));
   goto failnext;
  }
  if ((r = sshkey_from_private(private, &public)) != 0)
   fatal("sshkey_from_private failed: %s", ssh_err(r));
  snprintf(comment, sizeof comment, "%s@%s", pw->pw_name,
      hostname);
  if ((r = sshkey_save_private(private, prv_tmp, "",
      comment, use_new_format, new_format_cipher, rounds)) != 0) {
   error("Saving key \"%s\" failed: %s",
       prv_tmp, ssh_err(r));
   goto failnext;
  }
  if ((fd = mkstemp(pub_tmp)) == -1) {
   error("Could not save your public key in %s: %s",
       pub_tmp, strerror(errno));
   goto failnext;
  }
  (void)fchmod(fd, 0644);
  f = fdopen(fd, "w");
  if (f == ((void*)0)) {
   error("fdopen %s failed: %s", pub_tmp, strerror(errno));
   close(fd);
   goto failnext;
  }
  if ((r = sshkey_write(public, f)) != 0) {
   error("write key failed: %s", ssh_err(r));
   fclose(f);
   goto failnext;
  }
  fprintf(f, " %s\n", comment);
  if (ferror(f) != 0) {
   error("write key failed: %s", strerror(errno));
   fclose(f);
   goto failnext;
  }
  if (fclose(f) != 0) {
   error("key close failed: %s", strerror(errno));
   goto failnext;
  }


  if (rename(pub_tmp, pub_file) != 0) {
   error("Unable to move %s into position: %s",
       pub_file, strerror(errno));
   goto failnext;
  }
  if (rename(prv_tmp, prv_file) != 0) {
   error("Unable to move %s into position: %s",
       key_types[i].path, strerror(errno));
 failnext:
   first = 0;
   goto next;
  }
 next:
  sshkey_free(private);
  sshkey_free(public);
  free(prv_tmp);
  free(pub_tmp);
  free(prv_file);
  free(pub_file);
 }
 if (first != 0)
  printf("\n");
}
