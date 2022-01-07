
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8 ;
typedef int int8 ;
typedef int flag ;
struct TYPE_2__ {char* name; int numInputs; } ;


 int EXIT_SUCCESS ;
 int FALSE ;
 size_t NUM_FUNCTIONS ;
 int ROUND_DOWN ;
 int ROUND_NEAREST_EVEN ;
 int ROUND_TO_ZERO ;
 int ROUND_UP ;
 int TININESS_AFTER_ROUNDING ;
 int TININESS_BEFORE_ROUNDING ;
 int TRUE ;
 int fail (char*,...) ;
 int fputs (char*,int ) ;
 TYPE_1__* functions ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int timeFunction (size_t,int,int,int) ;

main( int argc, char **argv )
{
    char *argPtr;
    flag functionArgument;
    uint8 functionCode;
    int8 operands, roundingPrecision, roundingMode, tininessMode;

    if ( argc <= 1 ) goto writeHelpMessage;
    functionArgument = FALSE;
    functionCode = 0;
    operands = 0;
    roundingPrecision = 0;
    roundingMode = 0;
    tininessMode = 0;
    --argc;
    ++argv;
    while ( argc && ( argPtr = argv[ 0 ] ) ) {
        if ( argPtr[ 0 ] == '-' ) ++argPtr;
        if ( strcmp( argPtr, "help" ) == 0 ) {
 writeHelpMessage:
            fputs(
"timesoftfloat [<option>...] <function>\n"
"  <option>:  (* is default)\n"
"    -help            --Write this message and exit.\n"





"    -nearesteven     --Only time rounding to nearest/even.\n"
"    -tozero          --Only time rounding to zero.\n"
"    -down            --Only time rounding down.\n"
"    -up              --Only time rounding up.\n"
"    -tininessbefore  --Only time underflow tininess before rounding.\n"
"    -tininessafter   --Only time underflow tininess after rounding.\n"
"  <function>:\n"
"    int32_to_<float>                 <float>_add   <float>_eq\n"
"    <float>_to_int32                 <float>_sub   <float>_le\n"
"    <float>_to_int32_round_to_zero   <float>_mul   <float>_lt\n"
"    int64_to_<float>                 <float>_div   <float>_eq_signaling\n"
"    <float>_to_int64                 <float>_rem   <float>_le_quiet\n"
"    <float>_to_int64_round_to_zero                 <float>_lt_quiet\n"
"    <float>_to_<float>\n"
"    <float>_round_to_int\n"
"    <float>_sqrt\n"
"    -all1            --All 1-operand functions.\n"
"    -all2            --All 2-operand functions.\n"
"    -all             --All functions.\n"
"  <float>:\n"
"    float32          --Single precision.\n"
"    float64          --Double precision.\n"






                ,
                stdout
            );
            return EXIT_SUCCESS;
        }
        else if ( ( strcmp( argPtr, "nearesteven" ) == 0 )
                  || ( strcmp( argPtr, "nearest_even" ) == 0 ) ) {
            roundingMode = ROUND_NEAREST_EVEN;
        }
        else if ( ( strcmp( argPtr, "tozero" ) == 0 )
                  || ( strcmp( argPtr, "to_zero" ) == 0 ) ) {
            roundingMode = ROUND_TO_ZERO;
        }
        else if ( strcmp( argPtr, "down" ) == 0 ) {
            roundingMode = ROUND_DOWN;
        }
        else if ( strcmp( argPtr, "up" ) == 0 ) {
            roundingMode = ROUND_UP;
        }
        else if ( strcmp( argPtr, "tininessbefore" ) == 0 ) {
            tininessMode = TININESS_BEFORE_ROUNDING;
        }
        else if ( strcmp( argPtr, "tininessafter" ) == 0 ) {
            tininessMode = TININESS_AFTER_ROUNDING;
        }
        else if ( strcmp( argPtr, "all1" ) == 0 ) {
            functionArgument = TRUE;
            functionCode = 0;
            operands = 1;
        }
        else if ( strcmp( argPtr, "all2" ) == 0 ) {
            functionArgument = TRUE;
            functionCode = 0;
            operands = 2;
        }
        else if ( strcmp( argPtr, "all" ) == 0 ) {
            functionArgument = TRUE;
            functionCode = 0;
            operands = 0;
        }
        else {
            for ( functionCode = 1;
                  functionCode < NUM_FUNCTIONS;
                  ++functionCode
                ) {
                if ( strcmp( argPtr, functions[ functionCode ].name ) == 0 ) {
                    break;
                }
            }
            if ( functionCode == NUM_FUNCTIONS ) {
                fail( "Invalid option or function `%s'", argv[ 0 ] );
            }
            functionArgument = TRUE;
        }
        --argc;
        ++argv;
    }
    if ( ! functionArgument ) fail( "Function argument required" );
    if ( functionCode ) {
        timeFunction(
            functionCode, roundingPrecision, roundingMode, tininessMode );
    }
    else if ( operands == 1 ) {
        for ( functionCode = 1; functionCode < NUM_FUNCTIONS; ++functionCode
            ) {
            if ( functions[ functionCode ].numInputs == 1 ) {
                timeFunction(
                    functionCode, roundingPrecision, roundingMode, tininessMode
                );
            }
        }
    }
    else if ( operands == 2 ) {
        for ( functionCode = 1; functionCode < NUM_FUNCTIONS; ++functionCode
            ) {
            if ( functions[ functionCode ].numInputs == 2 ) {
                timeFunction(
                    functionCode, roundingPrecision, roundingMode, tininessMode
                );
            }
        }
    }
    else {
        for ( functionCode = 1; functionCode < NUM_FUNCTIONS; ++functionCode
            ) {
            timeFunction(
                functionCode, roundingPrecision, roundingMode, tininessMode );
        }
    }
    return EXIT_SUCCESS;

}
