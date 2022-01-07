
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;
typedef int buf ;


 int PATH_MAX ;
 int SSHCONF_CHECKPERM ;
 int SSHCONF_POSTCANON ;
 int SSHCONF_USERCONF ;
 char* _PATH_HOST_CONFIG_FILE ;
 char* _PATH_SSH_USER_CONFFILE ;
 char* config ;
 int errno ;
 int fatal (char*,char*,int ) ;
 int host ;
 int options ;
 int read_config_file (char*,struct passwd*,int ,char const*,int *,int) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strerror (int ) ;

__attribute__((used)) static void
process_config_files(const char *host_name, struct passwd *pw, int post_canon)
{
 char buf[PATH_MAX];
 int r;

 if (config != ((void*)0)) {
  if (strcasecmp(config, "none") != 0 &&
      !read_config_file(config, pw, host, host_name, &options,
      SSHCONF_USERCONF | (post_canon ? SSHCONF_POSTCANON : 0)))
   fatal("Can't open user config file %.100s: "
       "%.100s", config, strerror(errno));
 } else {
  r = snprintf(buf, sizeof buf, "%s/%s", pw->pw_dir,
      _PATH_SSH_USER_CONFFILE);
  if (r > 0 && (size_t)r < sizeof(buf))
   (void)read_config_file(buf, pw, host, host_name,
       &options, SSHCONF_CHECKPERM | SSHCONF_USERCONF |
       (post_canon ? SSHCONF_POSTCANON : 0));


  (void)read_config_file(_PATH_HOST_CONFIG_FILE, pw,
      host, host_name, &options,
      post_canon ? SSHCONF_POSTCANON : 0);
 }
}
