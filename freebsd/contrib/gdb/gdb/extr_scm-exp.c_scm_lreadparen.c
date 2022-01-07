
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int lexptr ;
 int scm_lreadr (int) ;
 int scm_skip_ws () ;

__attribute__((used)) static void
scm_lreadparen (int skipping)
{
  for (;;)
    {
      int c = scm_skip_ws ();
      if (')' == c || ']' == c)
 return;
      --lexptr;
      if (c == '\0')
 error ("missing close paren");
      scm_lreadr (skipping);
    }
}
