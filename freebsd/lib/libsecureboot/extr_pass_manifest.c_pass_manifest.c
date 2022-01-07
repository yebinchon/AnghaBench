
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_size; int st_mode; } ;
struct TYPE_4__ {int vtable; } ;
typedef TYPE_1__ br_hash_compat_context ;
struct TYPE_5__ {int (* out ) (int *,unsigned char*) ;int (* update ) (int *,char*,int ) ;int (* init ) (int *) ;} ;
typedef TYPE_2__ br_hash_class ;


 int EINVAL ;
 int EIO ;
 int EPERM ;
 scalar_t__ MAXPATHLEN ;
 int S_ISREG (int ) ;
 int VEF_VERBOSE ;
 int VE_FINGERPRINT_WRONG ;
 int VE_NOT_CHECKED ;
 int VE_VERIFIED ;
 int add_verify_status (struct stat*,int) ;
 int br_sha256_SIZE ;
 TYPE_2__ br_sha256_vtable ;
 int free (char*) ;
 int hexdigest (char*,int,unsigned char*,int) ;
 int is_verified (struct stat*) ;
 char* manifest_hash ;
 char* manifest_path ;
 char* manifest_prefix ;
 int manifest_present ;
 char* read_file (char const*,int *) ;
 int stat (char const*,struct stat*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strnlen (char const*,scalar_t__) ;
 int stub1 (int *) ;
 int stub2 (int *,char*,int ) ;
 int stub3 (int *,unsigned char*) ;
 scalar_t__ verify_signed (char const*,int ) ;

int
pass_manifest(const char *path, const char *prefix)
{
 char *content;
 struct stat st;
 unsigned char digest[br_sha256_SIZE];
 const br_hash_class *md;
 br_hash_compat_context ctx;
 int rc;

 content = ((void*)0);
 md = &br_sha256_vtable;

 if (strnlen(path, MAXPATHLEN) == MAXPATHLEN ||
     strnlen(prefix, MAXPATHLEN) == MAXPATHLEN)
  return (EINVAL);

 rc = stat(path, &st);
 if (rc != 0)
  goto out;

 if (!S_ISREG(st.st_mode)) {
  rc = EINVAL;
  goto out;
 }

 rc = is_verified(&st);

 if (rc != VE_NOT_CHECKED && rc != VE_VERIFIED) {
  rc = EPERM;
  goto out;
 }

 if (rc == VE_VERIFIED)
  content = read_file(path, ((void*)0));
 else
  content = (char *)verify_signed(path, VEF_VERBOSE);

 if (content == ((void*)0)) {
  add_verify_status(&st, VE_FINGERPRINT_WRONG);
  rc = EIO;
  goto out;
 }

 add_verify_status(&st, VE_VERIFIED);

 md->init(&ctx.vtable);
 md->update(&ctx.vtable, content, st.st_size);
 md->out(&ctx.vtable, digest);

 if (prefix == ((void*)0))
  manifest_prefix[0] = '\0';
 else
  strcpy(manifest_prefix, prefix);

 strcpy(manifest_path, path);

 hexdigest(manifest_hash, 2 * br_sha256_SIZE + 2,
     digest, br_sha256_SIZE);
 manifest_hash[2*br_sha256_SIZE] = '\0';

 manifest_present = 1;
 rc = 0;

out:
 if (content != ((void*)0))
  free(content);

 return (rc);
}
