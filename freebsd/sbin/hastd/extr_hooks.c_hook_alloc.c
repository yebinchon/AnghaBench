
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hookproc {int hp_magic; int hp_comm; int hp_lastreport; int hp_birthtime; scalar_t__ hp_pid; } ;


 int HOOKPROC_MAGIC_ALLOCATED ;
 int free (struct hookproc*) ;
 struct hookproc* malloc (int) ;
 int pjdlog_error (char*,...) ;
 int snprlcat (int ,int,char*,char*) ;
 int strlcpy (int ,char const*,int) ;
 int strlen (int ) ;
 int time (int *) ;

__attribute__((used)) static struct hookproc *
hook_alloc(const char *path, char **args)
{
 struct hookproc *hp;
 unsigned int ii;

 hp = malloc(sizeof(*hp));
 if (hp == ((void*)0)) {
  pjdlog_error("Unable to allocate %zu bytes of memory for a hook.",
      sizeof(*hp));
  return (((void*)0));
 }

 hp->hp_pid = 0;
 hp->hp_birthtime = hp->hp_lastreport = time(((void*)0));
 (void)strlcpy(hp->hp_comm, path, sizeof(hp->hp_comm));

 for (ii = 1; args[ii] != ((void*)0); ii++) {
  (void)snprlcat(hp->hp_comm, sizeof(hp->hp_comm), " %s",
      args[ii]);
 }
 if (strlen(hp->hp_comm) >= sizeof(hp->hp_comm) - 1) {
  pjdlog_error("Exec path too long, correct configuration file.");
  free(hp);
  return (((void*)0));
 }
 hp->hp_magic = HOOKPROC_MAGIC_ALLOCATED;
 return (hp);
}
