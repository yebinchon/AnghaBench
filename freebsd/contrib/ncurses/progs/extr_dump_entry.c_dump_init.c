
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_AIX ;
 int V_ALLCAPS ;
 int V_BSD ;
 int V_HPUX ;
 int V_SVR1 ;
 char* _nc_progname ;
 int bool_indirect ;
 int bool_names ;
 int bool_termcap_sort ;
 int bool_terminfo_sort ;
 int bool_variable_sort ;
 int boolcodes ;
 int boolfnames ;
 int boolnames ;
 int fprintf (int ,char*,char*,...) ;
 int height ;
 int num_indirect ;
 int num_names ;
 int num_termcap_sort ;
 int num_terminfo_sort ;
 int num_variable_sort ;
 int numcodes ;
 int numfnames ;
 int numnames ;
 int outform ;
 int pretty ;
 char* separator ;
 int sortmode ;
 int stderr ;
 int str_indirect ;
 int str_names ;
 int str_termcap_sort ;
 int str_terminfo_sort ;
 int str_variable_sort ;
 int strcmp (char const*,char*) ;
 int strcodes ;
 int strfnames ;
 int strnames ;
 char* trailer ;
 int tversion ;
 int width ;

void
dump_init(const char *version,
   int mode,
   int sort,
   int twidth,
   int theight,
   unsigned traceval,
   bool formatted)

{
    width = twidth;
    height = theight;
    pretty = formatted;


    if (version == 0)
 tversion = V_ALLCAPS;
    else if (!strcmp(version, "SVr1") || !strcmp(version, "SVR1")
      || !strcmp(version, "Ultrix"))
 tversion = V_SVR1;
    else if (!strcmp(version, "HP"))
 tversion = V_HPUX;
    else if (!strcmp(version, "AIX"))
 tversion = V_AIX;
    else if (!strcmp(version, "BSD"))
 tversion = V_BSD;
    else
 tversion = V_ALLCAPS;


    switch (outform = mode) {
    case 136:
    case 133:
 bool_names = boolnames;
 num_names = numnames;
 str_names = strnames;
 separator = (twidth > 0 && theight > 1) ? ", " : ",";
 trailer = "\n\t";
 break;

    case 132:
 bool_names = boolfnames;
 num_names = numfnames;
 str_names = strfnames;
 separator = (twidth > 0 && theight > 1) ? ", " : ",";
 trailer = "\n\t";
 break;

    case 134:
    case 135:
 bool_names = boolcodes;
 num_names = numcodes;
 str_names = strcodes;
 separator = ":";
 trailer = "\\\n\t:";
 break;
    }


    switch (sortmode = sort) {
    case 131:
 if (traceval)
     (void) fprintf(stderr,
      "%s: sorting by term structure order\n", _nc_progname);
 break;

    case 129:
 if (traceval)
     (void) fprintf(stderr,
      "%s: sorting by terminfo name order\n", _nc_progname);
 bool_indirect = bool_terminfo_sort;
 num_indirect = num_terminfo_sort;
 str_indirect = str_terminfo_sort;
 break;

    case 128:
 if (traceval)
     (void) fprintf(stderr,
      "%s: sorting by C variable order\n", _nc_progname);
 bool_indirect = bool_variable_sort;
 num_indirect = num_variable_sort;
 str_indirect = str_variable_sort;
 break;

    case 130:
 if (traceval)
     (void) fprintf(stderr,
      "%s: sorting by termcap name order\n", _nc_progname);
 bool_indirect = bool_termcap_sort;
 num_indirect = num_termcap_sort;
 str_indirect = str_termcap_sort;
 break;
    }

    if (traceval)
 (void) fprintf(stderr,
         "%s: width = %d, tversion = %d, outform = %d\n",
         _nc_progname, width, tversion, outform);
}
