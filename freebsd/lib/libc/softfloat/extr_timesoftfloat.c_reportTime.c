
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float int32 ;


 float CLOCKS_PER_SEC ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 char* functionName ;
 int printf (char*,float,char*) ;
 char* roundingModeName ;
 char* roundingPrecisionName ;
 int stdout ;
 char* tininessModeName ;

__attribute__((used)) static void reportTime( int32 count, long clocks )
{

    printf(
        "%8.1f kops/s: %s",
        ( count / ( ( (float) clocks ) / CLOCKS_PER_SEC ) ) / 1000,
        functionName
    );
    if ( roundingModeName ) {
        if ( roundingPrecisionName ) {
            fputs( ", precision ", stdout );
            fputs( roundingPrecisionName, stdout );
        }
        fputs( ", rounding ", stdout );
        fputs( roundingModeName, stdout );
        if ( tininessModeName ) {
            fputs( ", tininess ", stdout );
            fputs( tininessModeName, stdout );
            fputs( " rounding", stdout );
        }
    }
    fputc( '\n', stdout );

}
