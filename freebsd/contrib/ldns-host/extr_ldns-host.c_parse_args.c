
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef scalar_t__ ldns_rr_type ;


 int INT_MAX ;
 int LDNS_RESOLV_INET ;
 int LDNS_RESOLV_INET6 ;
 int LDNS_RR_CLASS_IN ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_RR_TYPE_AXFR ;
 scalar_t__ LDNS_RR_TYPE_IXFR ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 int M_AXFR ;
 int M_IXFR ;
 int M_SINGLE_Q ;
 int M_SOA ;
 void* atoi (int ) ;
 void* atol (int ) ;
 int die (int,char*,int ) ;
 int getopt (int,char**,char*) ;
 int ldns_get_rr_class_by_name (int ) ;
 scalar_t__ ldns_get_rr_type_by_name (int ) ;
 int o_ignore_servfail ;
 int o_ip6_int ;
 int o_ipversion ;
 void* o_ixfr_serial ;
 int o_mode ;
 char* o_name ;
 void* o_ndots ;
 int o_print_pkt_server ;
 int o_print_rr_server ;
 int o_recursive ;
 int o_retries ;
 int o_rrclass ;
 scalar_t__ o_rrtype ;
 char* o_server ;
 int o_tcp ;
 int o_timeout ;
 int o_verbose ;
 int optarg ;
 scalar_t__ optind ;
 char* progname ;
 int strncasecmp (int ,char*,int) ;
 int usage () ;

__attribute__((used)) static void
parse_args(int argc, char *argv[]) {
    int ch;

    progname = argv[0];
    while ((ch = getopt(argc, argv, "aCdilrsTvw46c:N:R:t:W:")) != -1) {
        switch (ch) {
        case 'a':
            if (o_mode != M_AXFR)
                o_mode = M_SINGLE_Q;
            o_rrtype = LDNS_RR_TYPE_ANY;
            o_verbose = 1;
            break;
        case 'C':
            o_mode = M_SOA;
            o_print_rr_server = 1;
            o_rrclass = LDNS_RR_CLASS_IN;
            o_rrtype = LDNS_RR_TYPE_NS;
            break;
        case 'c':

            o_rrclass = ldns_get_rr_class_by_name(optarg);
            if (o_rrclass <= 0)
                die(2, "invalid class: %s\n", optarg);
            break;
        case 'd': o_verbose = 1; break;
        case 'i': o_ip6_int = 1; break;
        case 'l':
            o_mode = M_AXFR;
            if (o_rrtype == (ldns_rr_type)-1)
                o_rrtype = LDNS_RR_TYPE_AXFR;
            o_tcp = 1;
            break;
        case 'N':
            o_ndots = atoi(optarg);
            if (o_ndots < 0) o_ndots = 0;
            break;
        case 'n':

            break;
        case 'r': o_recursive = 0; break;
        case 'R':
            o_retries = atoi(optarg);
            if (o_retries <= 0) o_retries = 1;
            if (o_retries > 255) o_retries = 255;
            break;
        case 's': o_ignore_servfail = 0; break;
        case 'T': o_tcp = 1; break;
        case 't':
            if (o_mode != M_AXFR)
                o_mode = M_SINGLE_Q;
            if (strncasecmp(optarg, "ixfr=", 5) == 0) {
                o_rrtype = LDNS_RR_TYPE_IXFR;
                o_ixfr_serial = atol(optarg + 5);
            } else {
                o_rrtype = ldns_get_rr_type_by_name(optarg);
                if (o_rrtype <= 0)
                    die(2, "invalid type: %s\n", optarg);
            }
            if (o_rrtype == LDNS_RR_TYPE_AXFR) {
                o_mode = M_AXFR;
                o_rrtype = LDNS_RR_TYPE_ANY;
                o_verbose = 1;
            }
            if (o_rrtype == LDNS_RR_TYPE_IXFR) {
                o_mode = M_IXFR;
                o_rrtype = LDNS_RR_TYPE_ANY;
            }
            break;
        case 'v': o_verbose = 1; break;
        case 'w':
              o_timeout = (time_t)INT_MAX;
              break;
        case 'W':
            o_timeout = atol(optarg);
            if (o_timeout <= 0) o_timeout = 1;
            break;
        case '4': o_ipversion = LDNS_RESOLV_INET; break;
        case '6': o_ipversion = LDNS_RESOLV_INET6; break;
        default:
            usage();
        }
    }
    argc -= optind;
    argv += optind;

    if (argc < 1)
        usage();
    o_name = argv[0];
    if (argc > 1) {
        o_server = argv[1];
        o_print_pkt_server = 1;
    }
    if (o_rrtype == (ldns_rr_type)-1)
        o_rrtype = LDNS_RR_TYPE_A;
}
