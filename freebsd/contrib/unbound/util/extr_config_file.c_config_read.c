
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct config_file {scalar_t__ dnscrypt_port; int dnscrypt; } ;
struct TYPE_6__ {char** gl_pathv; scalar_t__ gl_pathc; } ;
typedef TYPE_1__ glob_t ;
typedef int g ;
struct TYPE_7__ {scalar_t__ errors; } ;
typedef int FILE ;


 int EINVAL ;
 int GLOB_ABORTED ;
 int GLOB_BRACE ;
 int GLOB_ERR ;
 int GLOB_NOMATCH ;
 int GLOB_NOSORT ;
 int GLOB_NOSPACE ;
 int GLOB_TILDE ;
 int VERB_QUERY ;
 TYPE_5__* cfg_parser ;
 int create_cfg_parser (struct config_file*,char*,char const*) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,scalar_t__) ;
 int glob (char*,int,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int log_err (char*,char*,...) ;
 int memset (TYPE_1__*,int ,int) ;
 int stderr ;
 int strchr (char*,char) ;
 int strerror (int ) ;
 int * ub_c_in ;
 int ub_c_parse () ;
 int verbose (int ,char*,char*) ;

int
config_read(struct config_file* cfg, const char* filename, const char* chroot)
{
 FILE *in;
 char *fname = (char*)filename;





 if(!fname)
  return 1;
 in = fopen(fname, "r");
 if(!in) {
  log_err("Could not open %s: %s", fname, strerror(errno));
  return 0;
 }
 create_cfg_parser(cfg, fname, chroot);
 ub_c_in = in;
 ub_c_parse();
 fclose(in);

 if(!cfg->dnscrypt) cfg->dnscrypt_port = 0;

 if(cfg_parser->errors != 0) {
  fprintf(stderr, "read %s failed: %d errors in configuration file\n",
   fname, cfg_parser->errors);
  errno=EINVAL;
  return 0;
 }

 return 1;
}
