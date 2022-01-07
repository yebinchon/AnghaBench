
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done (int) ;
 int fprintf (int ,char*,char*,char const* const,char*,char const* const,char*,char const* const,char*,char const* const,char const* const,char*,char const* const,char const* const) ;
 int stderr ;

__attribute__((used)) static void
usage()
{
 const char *const common =
     "[-b blocksize] [-f file | -P pipecommand] [-s fileno]";
 const char *const fileell = "[file ...]";

 (void)fprintf(stderr, "usage:\t%s %s\n\t%s %s\n\t%s %s\n"
     "\t%s %s %s\n\t%s %s %s\n",
     "restore -i [-dhmNuvy]", common,
     "restore -R [-dNuvy]", common,
     "restore -r [-dNuvy]", common,
     "restore -t [-dhNuvy]", common, fileell,
     "restore -x [-dhmNuvy]", common, fileell);
 done(1);
}
