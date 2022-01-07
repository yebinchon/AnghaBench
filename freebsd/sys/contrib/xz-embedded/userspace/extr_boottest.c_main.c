
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int test_buf_to_buf () ;
 int test_buf_to_cb () ;
 int test_cb_to_buf () ;
 int test_cb_to_cb () ;

int main(int argc, char **argv)
{
 if (argc != 2)
  fprintf(stderr, "Usage: %s [bb|bc|cc|cb]\n", argv[0]);
 else if (strcmp(argv[1], "bb") == 0)
  test_buf_to_buf();
 else if (strcmp(argv[1], "bc") == 0)
  test_buf_to_cb();
 else if (strcmp(argv[1], "cc") == 0)
  test_cb_to_cb();
 else if (strcmp(argv[1], "cb") == 0)
  test_cb_to_buf();
 else
  fprintf(stderr, "Usage: %s [bb|bc|cc|cb]\n", argv[0]);

 return 0;
}
