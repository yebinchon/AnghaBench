
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XOF_INFO ;
 int XOF_KEYS ;
 int XOF_PRETTY ;
 int XOF_XPATH ;
 int XO_STYLE_HTML ;
 int XO_STYLE_JSON ;
 int XO_STYLE_TEXT ;
 int XO_STYLE_XML ;
 int close (int) ;
 int xo_close_container (char*) ;
 int xo_close_container_h (int *,char*) ;
 int xo_close_instance (char*) ;
 int xo_close_list (char*) ;
 int xo_close_marker (char*) ;
 int xo_emit (char*,...) ;
 int xo_err (int,char*) ;
 int xo_finish () ;
 int xo_open_container (char*) ;
 int xo_open_container_h (int *,char*) ;
 int xo_open_instance (char*) ;
 int xo_open_list (char*) ;
 int xo_open_marker (char*) ;
 int xo_parse_args (int,char**) ;
 int xo_set_flags (int *,int ) ;
 int xo_set_program (char*) ;
 int xo_set_style (int *,int ) ;
 scalar_t__ xo_streq (char*,char*) ;

int
main (int argc, char **argv)
{
    struct item {
 const char *i_title;
 int i_count;
    };
    struct item list[] = {
 { "gum", 1412 },
 { "rope", 85 },
 { "ladder", 0 },
 { "bolt", 4123 },
 { "water", 17 },
 { ((void*)0), 0 }
    };
    struct item *ip;
    int i;

    argc = xo_parse_args(argc, argv);
    if (argc < 0)
 return 1;

    for (argc = 1; argv[argc]; argc++) {
 if (xo_streq(argv[argc], "xml"))
     xo_set_style(((void*)0), XO_STYLE_XML);
 else if (xo_streq(argv[argc], "json"))
     xo_set_style(((void*)0), XO_STYLE_JSON);
 else if (xo_streq(argv[argc], "text"))
     xo_set_style(((void*)0), XO_STYLE_TEXT);
 else if (xo_streq(argv[argc], "html"))
     xo_set_style(((void*)0), XO_STYLE_HTML);
 else if (xo_streq(argv[argc], "pretty"))
     xo_set_flags(((void*)0), XOF_PRETTY);
 else if (xo_streq(argv[argc], "xpath"))
     xo_set_flags(((void*)0), XOF_XPATH);
 else if (xo_streq(argv[argc], "info"))
     xo_set_flags(((void*)0), XOF_INFO);
        else if (xo_streq(argv[argc], "error")) {
            close(-1);
            xo_err(1, "error detected");
        }
    }

    xo_set_flags(((void*)0), XOF_KEYS);
    xo_set_program("test");

    xo_open_container_h(((void*)0), "top");

    xo_open_container("data");
    xo_open_container("contents");
    xo_open_list("item");

    xo_emit("{T:Item/%-10s}{T:Count/%12s}\n");

    for (ip = list; ip->i_title; ip++) {
 xo_open_instance("item");

 xo_emit("{k:name/%-10s/%s}{n:count/%12u/%u}\n",
  ip->i_title, ip->i_count);

 xo_close_instance("item");
    }

    xo_close_list("item");
    xo_close_container("contents");
    xo_close_container("data");

    xo_emit("\n\n");

    xo_open_container("data2");
    xo_open_container("contents");

    xo_emit("{T:Item/%-10s}{T:Count/%12s}\n");

    for (ip = list; ip->i_title; ip++) {
 xo_open_instance("item");

 xo_emit("{k:name/%-10s/%s}{n:count/%12u/%u}\n",
  ip->i_title, ip->i_count);
    }

    xo_close_container("data2");

    xo_emit("\n\n");

    xo_open_container("data3");
    xo_open_marker("m1");
    xo_open_container("contents");

    xo_emit("{T:Item/%-10s}{T:Count/%12s}\n");

    for (ip = list; ip->i_title; ip++) {
 xo_open_instance("item");

 xo_emit("{k:name/%-10s/%s}{n:count/%12u/%u}\n",
  ip->i_title, ip->i_count);
    }

    xo_close_container("data3");
    xo_emit("{:test}", "one");

    xo_close_marker("m1");
    xo_close_container("data3");

    xo_emit("\n\n");

    xo_open_container("data4");
    xo_open_marker("m1");
    xo_open_container("contents");

    xo_emit("{T:Item/%-10s}{T:Count/%12s}\n");

    for (ip = list; ip->i_title; ip++) {
 xo_open_instance("item");

 xo_emit("{k:name/%-10s/%s}{n:count/%12u/%u}\n",
  ip->i_title, ip->i_count);

 xo_open_marker("m2");
 for (i = 0; i < 3; i++) {
     xo_open_instance("sub");
     xo_emit("{Lwc:/Name}{:name/%d} + 1 = {:next/%d}\n", i, i + 1);
     xo_close_container("data4");
 }
 xo_close_marker("m2");
 xo_emit("{Lwc:/Last}{:last/%d}\n", i);
    }

    xo_close_container("data4");
    xo_emit("{:test}", "one");

    xo_emit("\n\n");

    xo_close_container_h(((void*)0), "top");

    xo_finish();

    return 0;
}
