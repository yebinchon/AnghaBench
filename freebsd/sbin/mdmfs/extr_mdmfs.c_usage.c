
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr,
"usage: %s [-DLlMNnPStUX] [-a maxcontig] [-b block-size]\n"
"\t[-c blocks-per-cylinder-group][-d max-extent-size] [-E path-mdconfig]\n"
"\t[-e maxbpg] [-F file] [-f frag-size] [-i bytes] [-k skel]\n"
"\t[-m percent-free] [-O optimization] [-o mount-options]\n"
"\t[-p permissions] [-s size] [-v version] [-w user:group]\n"
"\tmd-device mount-point\n", getprogname());
 exit(1);
}
