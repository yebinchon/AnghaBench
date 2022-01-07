
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cell_list {int * cell; struct cell_list* next; } ;
typedef int krb5_principal ;
struct TYPE_4__ {int num_strings; char** strings; } ;


 int F_OK ;
 scalar_t__ access (char*,int ) ;
 int afslog_cell (char*,int) ;
 int afslog_file (char*) ;
 int args ;
 scalar_t__ cache_string ;
 struct cell_list* cell_list ;
 TYPE_1__ cells ;
 scalar_t__ client_string ;
 int * context ;
 scalar_t__ do_afslog (int *) ;
 int errx (int,char*) ;
 int exit (int ) ;
 TYPE_1__ files ;
 int free_getarg_strings (TYPE_1__*) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 scalar_t__ help_flag ;
 int * id ;
 int k_hasafs () ;
 int k_unlog () ;
 int kafs_set_verbose (int ,int *) ;
 int krb5_cc_cache_match (int *,int ,int **) ;
 scalar_t__ krb5_cc_default (int *,int **) ;
 scalar_t__ krb5_cc_resolve (int *,scalar_t__,int **) ;
 int krb5_init_context (int **) ;
 int krb5_parse_name (int *,scalar_t__,int *) ;
 int krb5_warnx (int *,char*,scalar_t__) ;
 int log_func ;
 int num_args ;
 int print_version (int *) ;
 int setprogname (char*) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ unlog_flag ;
 int usage (int) ;
 scalar_t__ verbose ;
 scalar_t__ version_flag ;
 int warnx (char*,int *) ;

int
main(int argc, char **argv)
{
    int optind = 0;
    int i;
    int num;
    int ret = 0;
    int failed = 0;
    struct cell_list *p;

    setprogname(argv[0]);

    if(getarg(args, num_args, argc, argv, &optind))
 usage(1);
    if(help_flag)
 usage(0);
    if(version_flag) {
 print_version(((void*)0));
 exit(0);
    }

    if(!k_hasafs())
 errx(1, "AFS does not seem to be present on this machine");

    if(unlog_flag){
 k_unlog();
 exit(0);
    }
    if (verbose)
 kafs_set_verbose(log_func, ((void*)0));

    num = 0;
    for(i = 0; i < files.num_strings; i++){
 afslog_file(files.strings[i]);
 num++;
    }
    free_getarg_strings (&files);
    for(i = 0; i < cells.num_strings; i++){
 afslog_cell(cells.strings[i], 1);
 num++;
    }
    free_getarg_strings (&cells);
    for(i = optind; i < argc; i++){
 num++;
 if(strcmp(argv[i], ".") == 0 ||
    strcmp(argv[i], "..") == 0 ||
    strchr(argv[i], '/') ||
    access(argv[i], F_OK) == 0)
     afslog_file(argv[i]);
 else
     afslog_cell(argv[i], 1);
    }
    if(num == 0) {
 if(do_afslog(((void*)0)))
     failed++;
    } else
 for(p = cell_list; p; p = p->next) {
     if(verbose)
  warnx("Getting tokens for cell \"%s\"", p->cell);
     if(do_afslog(p->cell))
  failed++;
    }

    return failed;
}
