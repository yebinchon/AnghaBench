
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XOF_COLUMNS ;
 int info ;
 int info_count ;
 int xo_attr (char*,char*,char*) ;
 int xo_close_container (char*) ;
 int xo_close_instance (char*) ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_finish () ;
 int xo_open_container (char*) ;
 int xo_open_instance (char*) ;
 int xo_open_list (char*) ;
 int xo_parse_args (int,char**) ;
 int xo_set_flags (int *,int ) ;
 int xo_set_info (int *,int ,int ) ;

int
main (int argc, char **argv)
{
    struct employee {
 const char *e_first;
 const char *e_nic;
 const char *e_last;
 unsigned e_dept;
 unsigned e_percent;
    } employees[] = {
 { "Jim", "რეგტ", "გთხოვთ ახ", 431, 90 },
 { "Terry", "<one", "Οὐχὶ ταὐτὰ παρίσταταί μοι Jones", 660, 90 },
 { "Leslie", "Les", "Patterson", 341,60 },
 { "Ashley", "Ash", "Meter & Smith", 1440, 40 },
 { "0123456789", "0123456789", "012345678901234567890", 1440, 40 },
 { "ახლა", "გაიარო", "საერთაშორისო", 123, 90 },
 { ((void*)0), ((void*)0) }
    }, *ep = employees;
    int rc;

    argc = xo_parse_args(argc, argv);
    if (argc < 0)
 return 1;

    xo_set_info(((void*)0), info, info_count);
    xo_set_flags(((void*)0), XOF_COLUMNS);

    xo_open_container("employees");

    xo_open_list("test");
    xo_open_instance("test");
    xo_emit("{ek:filename/%s}", ((void*)0));
    xo_close_instance("test");
    xo_close_list("test");

    rc = xo_emit("Οὐχὶ ταὐτὰ παρίσταταί μοι {:v1/%s}, {:v2/%s}\n",
     "γιγνώσκειν", "ὦ ἄνδρες ᾿Αθηναῖοι");
    rc = xo_emit("{:columns/%d}\n", rc);
    xo_emit("{:columns/%d}\n", rc);

    rc = xo_emit("გთხოვთ {:v1/%s} {:v2/%s}\n",
     "ახლავე გაიაროთ რეგისტრაცია",
     "Unicode-ის მეათე საერთაშორისო");
    xo_emit("{:columns/%d}\n", rc);


    rc = xo_emit("{T:First Name/%-25s}{T:Last Name/%-14s}"
     "{T:/%-12s}{T:Time (%)}\n", "Department");
    xo_emit("{:columns/%d}\n", rc);

    xo_open_list("employee");
    for ( ; ep->e_first; ep++) {
 xo_open_instance("employee");
 rc = xo_emit("{[:-25}{:first-name/%s} ({:nic-name/\"%s\"}){]:}"
  "{:last-name/%-14..14s/%s}"
  "{:department/%8u/%u}{:percent-time/%8u/%u}\n",
  ep->e_first, ep->e_nic, ep->e_last, ep->e_dept, ep->e_percent);
 xo_emit("{:columns/%d}\n", rc);
 if (ep->e_percent > 50) {
     xo_attr("full-time", "%s", "honest & for true");
     xo_emit("{e:benefits/%s}", "full");
 }
 xo_close_instance("employee");
    }

    xo_close_list("employee");
    xo_close_container("employees");

    xo_finish();

    return 0;
}
