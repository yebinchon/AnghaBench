
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int change_buf (int ,char*) ;
 char* getenv (char*) ;
 int stderr ;
 int stdin ;
 int stdout ;

__attribute__((used)) __attribute__ ((constructor)) static void
stdbuf(void)
{
 char *i_mode, *o_mode, *e_mode;

 i_mode = getenv("_STDBUF_I");
 o_mode = getenv("_STDBUF_O");
 e_mode = getenv("_STDBUF_E");

 if (e_mode != ((void*)0))
  change_buf(stderr, e_mode);
 if (i_mode != ((void*)0))
  change_buf(stdin, i_mode);
 if (o_mode != ((void*)0))
  change_buf(stdout, o_mode);
}
