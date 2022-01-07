
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_result_t ;
typedef int isc_lex_t ;
typedef int FILE ;


 scalar_t__ ISC_R_SUCCESS ;
 int ISC_TRUE ;
 int REQUIRE (int ) ;
 int VALID_LEX (int *) ;
 int fclose (int *) ;
 scalar_t__ isc_stdio_open (char const*,char*,int **) ;
 scalar_t__ new_source (int *,int ,int ,int *,char const*) ;

isc_result_t
isc_lex_openfile(isc_lex_t *lex, const char *filename) {
 isc_result_t result;
 FILE *stream = ((void*)0);





 REQUIRE(VALID_LEX(lex));

 result = isc_stdio_open(filename, "r", &stream);
 if (result != ISC_R_SUCCESS)
  return (result);

 result = new_source(lex, ISC_TRUE, ISC_TRUE, stream, filename);
 if (result != ISC_R_SUCCESS)
  (void)fclose(stream);
 return (result);
}
