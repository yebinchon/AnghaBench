
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fprintf (int ,char*,char const*,char*) ;
 int kldload (char const*) ;
 int modfind (char const*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static int
LoadModules(void)
{
  const char *module[] = { "netgraph", "ng_socket", "ng_ether", "ng_pppoe" };
  int f;

  for (f = 0; f < sizeof module / sizeof *module; f++)
    if (modfind(module[f]) == -1 && kldload(module[f]) == -1) {
      fprintf(stderr, "kldload: %s: %s\n", module[f], strerror(errno));
      return 0;
    }

  return 1;
}
