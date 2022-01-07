
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_uid; int st_mode; } ;
struct passwd {int dummy; } ;
typedef int Options ;
typedef int FILE ;


 int READCONF_MAX_DEPTH ;
 int SSHCONF_CHECKPERM ;
 int debug (char*,char const*) ;
 int errno ;
 int fatal (char*,...) ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int fstat (int ,struct stat*) ;
 int getline (char**,size_t*,int *) ;
 scalar_t__ getuid () ;
 scalar_t__ process_config_line_depth (int *,struct passwd*,char const*,char const*,char*,char const*,int,int*,int,int) ;
 int strerror (int ) ;

__attribute__((used)) static int
read_config_file_depth(const char *filename, struct passwd *pw,
    const char *host, const char *original_host, Options *options,
    int flags, int *activep, int depth)
{
 FILE *f;
 char *line = ((void*)0);
 size_t linesize = 0;
 int linenum;
 int bad_options = 0;

 if (depth < 0 || depth > READCONF_MAX_DEPTH)
  fatal("Too many recursive configuration includes");

 if ((f = fopen(filename, "r")) == ((void*)0))
  return 0;

 if (flags & SSHCONF_CHECKPERM) {
  struct stat sb;

  if (fstat(fileno(f), &sb) == -1)
   fatal("fstat %s: %s", filename, strerror(errno));
  if (((sb.st_uid != 0 && sb.st_uid != getuid()) ||
      (sb.st_mode & 022) != 0))
   fatal("Bad owner or permissions on %s", filename);
 }

 debug("Reading configuration data %.200s", filename);





 linenum = 0;
 while (getline(&line, &linesize, f) != -1) {

  linenum++;
  if (process_config_line_depth(options, pw, host, original_host,
      line, filename, linenum, activep, flags, depth) != 0)
   bad_options++;
 }
 free(line);
 fclose(f);
 if (bad_options > 0)
  fatal("%s: terminating, %d bad configuration options",
      filename, bad_options);
 return 1;
}
