
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8 ;
typedef int int8 ;
struct TYPE_2__ {int name; } ;
 int float128_add ;
 int float128_div ;
 int float128_eq ;
 int float128_eq_signaling ;
 int float128_le ;
 int float128_le_quiet ;
 int float128_lt ;
 int float128_lt_quiet ;
 int float128_mul ;
 int float128_rem ;
 int float128_round_to_int ;
 int float128_sqrt ;
 int float128_sub ;
 int float128_to_float32 ;
 int float128_to_float64 ;
 int float128_to_floatx80 ;
 int float128_to_int32 ;
 int float128_to_int32_round_to_zero ;
 int float128_to_int64 ;
 int float128_to_int64_round_to_zero ;
 int float32_add ;
 int float32_div ;
 int float32_eq ;
 int float32_eq_signaling ;
 int float32_le ;
 int float32_le_quiet ;
 int float32_lt ;
 int float32_lt_quiet ;
 int float32_mul ;
 int float32_rem ;
 int float32_round_to_int ;
 int float32_sqrt ;
 int float32_sub ;
 int float32_to_float128 ;
 int float32_to_float64 ;
 int float32_to_floatx80 ;
 int float32_to_int32 ;
 int float32_to_int32_round_to_zero ;
 int float32_to_int64 ;
 int float32_to_int64_round_to_zero ;
 int float64_add ;
 int float64_div ;
 int float64_eq ;
 int float64_eq_signaling ;
 int float64_le ;
 int float64_le_quiet ;
 int float64_lt ;
 int float64_lt_quiet ;
 int float64_mul ;
 int float64_rem ;
 int float64_round_to_int ;
 int float64_sqrt ;
 int float64_sub ;
 int float64_to_float128 ;
 int float64_to_float32 ;
 int float64_to_floatx80 ;
 int float64_to_int32 ;
 int float64_to_int32_round_to_zero ;
 int float64_to_int64 ;
 int float64_to_int64_round_to_zero ;
 int float_detect_tininess ;
 size_t float_round_down ;
 size_t float_round_nearest_even ;
 size_t float_round_to_zero ;
 size_t float_round_up ;
 size_t float_rounding_mode ;
 int float_tininess_after_rounding ;
 int float_tininess_before_rounding ;
 int floatx80_add ;
 int floatx80_div ;
 int floatx80_eq ;
 int floatx80_eq_signaling ;
 int floatx80_le ;
 int floatx80_le_quiet ;
 int floatx80_lt ;
 int floatx80_lt_quiet ;
 int floatx80_mul ;
 int floatx80_rem ;
 int floatx80_round_to_int ;
 int floatx80_rounding_precision ;
 int floatx80_sqrt ;
 int floatx80_sub ;
 int floatx80_to_float128 ;
 int floatx80_to_float32 ;
 int floatx80_to_float64 ;
 int floatx80_to_int32 ;
 int floatx80_to_int32_round_to_zero ;
 int floatx80_to_int64 ;
 int floatx80_to_int64_round_to_zero ;
 int functionName ;
 TYPE_1__* functions ;
 int int32_to_float128 ;
 int int32_to_float32 ;
 int int32_to_float64 ;
 int int32_to_floatx80 ;
 int int64_to_float128 ;
 int int64_to_float32 ;
 int int64_to_float64 ;
 int int64_to_floatx80 ;
 char* roundingModeName ;
 char* roundingPrecisionName ;
 int time_a_float128_z_float32 (int ) ;
 int time_a_float128_z_float64 (int ) ;
 int time_a_float128_z_floatx80 (int ) ;
 int time_a_float128_z_int32 (int ) ;
 int time_a_float128_z_int64 (int ) ;
 int time_a_float32_z_float128 (int ) ;
 int time_a_float32_z_float64 (int ) ;
 int time_a_float32_z_floatx80 (int ) ;
 int time_a_float32_z_int32 (int ) ;
 int time_a_float32_z_int64 (int ) ;
 int time_a_float64_z_float128 (int ) ;
 int time_a_float64_z_float32 (int ) ;
 int time_a_float64_z_floatx80 (int ) ;
 int time_a_float64_z_int32 (int ) ;
 int time_a_float64_z_int64 (int ) ;
 int time_a_floatx80_z_float128 (int ) ;
 int time_a_floatx80_z_float32 (int ) ;
 int time_a_floatx80_z_float64 (int ) ;
 int time_a_floatx80_z_int32 (int ) ;
 int time_a_floatx80_z_int64 (int ) ;
 int time_a_int32_z_float128 (int ) ;
 int time_a_int32_z_float32 (int ) ;
 int time_a_int32_z_float64 (int ) ;
 int time_a_int32_z_floatx80 (int ) ;
 int time_a_int64_z_float128 (int ) ;
 int time_a_int64_z_float32 (int ) ;
 int time_a_int64_z_float64 (int ) ;
 int time_a_int64_z_floatx80 (int ) ;
 int time_ab_float128_z_flag (int ) ;
 int time_ab_float32_z_flag (int ) ;
 int time_ab_float64_z_flag (int ) ;
 int time_ab_floatx80_z_flag (int ) ;
 int time_abz_float128 (int ) ;
 int time_abz_float32 (int ) ;
 int time_abz_float64 (int ) ;
 int time_abz_floatx80 (int ) ;
 int time_az_float128 (int ) ;
 int time_az_float128_pos (int ) ;
 int time_az_float32 (int ) ;
 int time_az_float32_pos (int ) ;
 int time_az_float64 (int ) ;
 int time_az_float64_pos (int ) ;
 int time_az_floatx80 (int ) ;
 int time_az_floatx80_pos (int ) ;
 char* tininessModeName ;

__attribute__((used)) static void
 timeFunctionVariety(
     uint8 functionCode,
     int8 roundingPrecision,
     int8 roundingMode,
     int8 tininessMode
 )
{
    uint8 roundingCode;
    int8 tininessCode;

    functionName = functions[ functionCode ].name;
    if ( roundingPrecision == 32 ) {
        roundingPrecisionName = "32";
    }
    else if ( roundingPrecision == 64 ) {
        roundingPrecisionName = "64";
    }
    else if ( roundingPrecision == 80 ) {
        roundingPrecisionName = "80";
    }
    else {
        roundingPrecisionName = ((void*)0);
    }



    switch ( roundingMode ) {
     case 0:
        roundingModeName = ((void*)0);
        roundingCode = float_round_nearest_even;
        break;
     case 132:
        roundingModeName = "nearest_even";
        roundingCode = float_round_nearest_even;
        break;
     case 131:
        roundingModeName = "to_zero";
        roundingCode = float_round_to_zero;
        break;
     case 133:
        roundingModeName = "down";
        roundingCode = float_round_down;
        break;
     case 130:
        roundingModeName = "up";
        roundingCode = float_round_up;
        break;
    }
    float_rounding_mode = roundingCode;
    switch ( tininessMode ) {
     case 0:
        tininessModeName = ((void*)0);
        tininessCode = float_tininess_after_rounding;
        break;
     case 128:
        tininessModeName = "before";
        tininessCode = float_tininess_before_rounding;
        break;
     case 129:
        tininessModeName = "after";
        tininessCode = float_tininess_after_rounding;
        break;
    }
    float_detect_tininess = tininessCode;
    switch ( functionCode ) {
     case 140:
        time_a_int32_z_float32( int32_to_float32 );
        break;
     case 139:
        time_a_int32_z_float64( int32_to_float64 );
        break;
     case 136:
        time_a_int64_z_float32( int64_to_float32 );
        break;
     case 135:
        time_a_int64_z_float64( int64_to_float64 );
        break;
     case 185:
        time_a_float32_z_int32( float32_to_int32 );
        break;
     case 184:
        time_a_float32_z_int32( float32_to_int32_round_to_zero );
        break;
     case 183:
        time_a_float32_z_int64( float32_to_int64 );
        break;
     case 182:
        time_a_float32_z_int64( float32_to_int64_round_to_zero );
        break;
     case 187:
        time_a_float32_z_float64( float32_to_float64 );
        break;
     case 191:
        time_az_float32( float32_round_to_int );
        break;
     case 201:
        time_abz_float32( float32_add );
        break;
     case 189:
        time_abz_float32( float32_sub );
        break;
     case 193:
        time_abz_float32( float32_mul );
        break;
     case 200:
        time_abz_float32( float32_div );
        break;
     case 192:
        time_abz_float32( float32_rem );
        break;
     case 190:
        time_az_float32_pos( float32_sqrt );
        break;
     case 199:
        time_ab_float32_z_flag( float32_eq );
        break;
     case 197:
        time_ab_float32_z_flag( float32_le );
        break;
     case 195:
        time_ab_float32_z_flag( float32_lt );
        break;
     case 198:
        time_ab_float32_z_flag( float32_eq_signaling );
        break;
     case 196:
        time_ab_float32_z_flag( float32_le_quiet );
        break;
     case 194:
        time_ab_float32_z_flag( float32_lt_quiet );
        break;
     case 165:
        time_a_float64_z_int32( float64_to_int32 );
        break;
     case 164:
        time_a_float64_z_int32( float64_to_int32_round_to_zero );
        break;
     case 163:
        time_a_float64_z_int64( float64_to_int64 );
        break;
     case 162:
        time_a_float64_z_int64( float64_to_int64_round_to_zero );
        break;
     case 167:
        time_a_float64_z_float32( float64_to_float32 );
        break;
     case 171:
        time_az_float64( float64_round_to_int );
        break;
     case 181:
        time_abz_float64( float64_add );
        break;
     case 169:
        time_abz_float64( float64_sub );
        break;
     case 173:
        time_abz_float64( float64_mul );
        break;
     case 180:
        time_abz_float64( float64_div );
        break;
     case 172:
        time_abz_float64( float64_rem );
        break;
     case 170:
        time_az_float64_pos( float64_sqrt );
        break;
     case 179:
        time_ab_float64_z_flag( float64_eq );
        break;
     case 177:
        time_ab_float64_z_flag( float64_le );
        break;
     case 175:
        time_ab_float64_z_flag( float64_lt );
        break;
     case 178:
        time_ab_float64_z_flag( float64_eq_signaling );
        break;
     case 176:
        time_ab_float64_z_flag( float64_le_quiet );
        break;
     case 174:
        time_ab_float64_z_flag( float64_lt_quiet );
        break;
    }

}
