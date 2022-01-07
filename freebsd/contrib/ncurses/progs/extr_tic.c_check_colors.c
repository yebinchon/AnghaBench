
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMTYPE ;


 int PAIRED (int *,int *) ;
 scalar_t__ VALID_NUMERIC (scalar_t__) ;
 scalar_t__ VALID_STRING (int *) ;
 int _nc_capcmp (int *,int *) ;
 int _nc_warning (char*,...) ;
 int * initialize_pair ;
 scalar_t__ max_colors ;
 scalar_t__ max_pairs ;
 int * orig_colors ;
 int * orig_pair ;
 int * set_a_background ;
 int * set_a_foreground ;
 int * set_background ;
 int * set_color_pair ;
 int * set_foreground ;

__attribute__((used)) static void
check_colors(TERMTYPE *tp)
{
    if ((max_colors > 0) != (max_pairs > 0)
 || ((max_colors > max_pairs) && (initialize_pair == 0)))
 _nc_warning("inconsistent values for max_colors (%d) and max_pairs (%d)",
      max_colors, max_pairs);

    PAIRED(set_foreground, set_background);
    PAIRED(set_a_foreground, set_a_background);
    PAIRED(set_color_pair, initialize_pair);

    if (VALID_STRING(set_foreground)
 && VALID_STRING(set_a_foreground)
 && !_nc_capcmp(set_foreground, set_a_foreground))
 _nc_warning("expected setf/setaf to be different");

    if (VALID_STRING(set_background)
 && VALID_STRING(set_a_background)
 && !_nc_capcmp(set_background, set_a_background))
 _nc_warning("expected setb/setab to be different");


    if (VALID_NUMERIC(max_colors) && VALID_NUMERIC(max_pairs)
 && (((set_foreground != ((void*)0))
      && (set_background != ((void*)0)))
     || ((set_a_foreground != ((void*)0))
  && (set_a_background != ((void*)0)))
     || set_color_pair)) {
 if (!VALID_STRING(orig_pair) && !VALID_STRING(orig_colors))
     _nc_warning("expected either op/oc string for resetting colors");
    }
}
