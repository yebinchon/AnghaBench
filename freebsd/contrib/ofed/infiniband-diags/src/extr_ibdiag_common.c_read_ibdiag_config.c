
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int FILE ;


 int IBND_CONFIG_MLX_EPI ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int free (void*) ;
 void* ibd_ca ;
 void* ibd_ca_port ;
 int ibd_ibnetdisc_flags ;
 void* ibd_mkey ;
 void* ibd_nd_format ;
 void* ibd_sakey ;
 void* ibd_timeout ;
 scalar_t__ stat (char const*,struct stat*) ;
 void* strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 char* strtok_r (char*,char*,char**) ;
 void* strtoul (char*,int *,int ) ;
 void* strtoull (char*,int ,int ) ;
 scalar_t__ val_str_true (char*) ;

void read_ibdiag_config(const char *file)
{
 char buf[1024];
 FILE *config_fd = ((void*)0);
 char *p_prefix, *p_last;
 char *name;
 char *val_str;
 struct stat statbuf;


 if (stat(file, &statbuf))
  return;

 config_fd = fopen(file, "r");
 if (!config_fd)
  return;

 while (fgets(buf, sizeof buf, config_fd) != ((void*)0)) {
  p_prefix = strtok_r(buf, "\n", &p_last);
  if (!p_prefix)
   continue;

  if (*p_prefix == '#')
   continue;

  name = strtok_r(p_prefix, "=", &p_last);
  val_str = strtok_r(((void*)0), "\n", &p_last);

  if (strncmp(name, "CA", strlen("CA")) == 0) {
   free(ibd_ca);
   ibd_ca = strdup(val_str);
  } else if (strncmp(name, "Port", strlen("Port")) == 0) {
   ibd_ca_port = strtoul(val_str, ((void*)0), 0);
  } else if (strncmp(name, "timeout", strlen("timeout")) == 0) {
   ibd_timeout = strtoul(val_str, ((void*)0), 0);
  } else if (strncmp(name, "MLX_EPI", strlen("MLX_EPI")) == 0) {
   if (val_str_true(val_str)) {
    ibd_ibnetdisc_flags |= IBND_CONFIG_MLX_EPI;
   } else {
    ibd_ibnetdisc_flags &= ~IBND_CONFIG_MLX_EPI;
   }
  } else if (strncmp(name, "m_key", strlen("m_key")) == 0) {
   ibd_mkey = strtoull(val_str, 0, 0);
  } else if (strncmp(name, "sa_key",
       strlen("sa_key")) == 0) {
   ibd_sakey = strtoull(val_str, 0, 0);
  } else if (strncmp(name, "nd_format",
       strlen("nd_format")) == 0) {
   ibd_nd_format = strdup(val_str);
  }
 }

 fclose(config_fd);
}
