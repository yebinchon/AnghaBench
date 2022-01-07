; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/softfloat/extr_timesoftfloat.c_timeFunctionVariety.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/softfloat/extr_timesoftfloat.c_timeFunctionVariety.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@functions = common dso_local global %struct.TYPE_2__* null, align 8
@functionName = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"32\00", align 1
@roundingPrecisionName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@roundingModeName = common dso_local global i8* null, align 8
@float_round_nearest_even = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"nearest_even\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"to_zero\00", align 1
@float_round_to_zero = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@float_round_down = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@float_round_up = common dso_local global i64 0, align 8
@float_rounding_mode = common dso_local global i64 0, align 8
@tininessModeName = common dso_local global i8* null, align 8
@float_tininess_after_rounding = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@float_tininess_before_rounding = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@float_detect_tininess = common dso_local global i32 0, align 4
@int32_to_float32 = common dso_local global i32 0, align 4
@int32_to_float64 = common dso_local global i32 0, align 4
@int64_to_float32 = common dso_local global i32 0, align 4
@int64_to_float64 = common dso_local global i32 0, align 4
@float32_to_int32 = common dso_local global i32 0, align 4
@float32_to_int32_round_to_zero = common dso_local global i32 0, align 4
@float32_to_int64 = common dso_local global i32 0, align 4
@float32_to_int64_round_to_zero = common dso_local global i32 0, align 4
@float32_to_float64 = common dso_local global i32 0, align 4
@float32_round_to_int = common dso_local global i32 0, align 4
@float32_add = common dso_local global i32 0, align 4
@float32_sub = common dso_local global i32 0, align 4
@float32_mul = common dso_local global i32 0, align 4
@float32_div = common dso_local global i32 0, align 4
@float32_rem = common dso_local global i32 0, align 4
@float32_sqrt = common dso_local global i32 0, align 4
@float32_eq = common dso_local global i32 0, align 4
@float32_le = common dso_local global i32 0, align 4
@float32_lt = common dso_local global i32 0, align 4
@float32_eq_signaling = common dso_local global i32 0, align 4
@float32_le_quiet = common dso_local global i32 0, align 4
@float32_lt_quiet = common dso_local global i32 0, align 4
@float64_to_int32 = common dso_local global i32 0, align 4
@float64_to_int32_round_to_zero = common dso_local global i32 0, align 4
@float64_to_int64 = common dso_local global i32 0, align 4
@float64_to_int64_round_to_zero = common dso_local global i32 0, align 4
@float64_to_float32 = common dso_local global i32 0, align 4
@float64_round_to_int = common dso_local global i32 0, align 4
@float64_add = common dso_local global i32 0, align 4
@float64_sub = common dso_local global i32 0, align 4
@float64_mul = common dso_local global i32 0, align 4
@float64_div = common dso_local global i32 0, align 4
@float64_rem = common dso_local global i32 0, align 4
@float64_sqrt = common dso_local global i32 0, align 4
@float64_eq = common dso_local global i32 0, align 4
@float64_le = common dso_local global i32 0, align 4
@float64_lt = common dso_local global i32 0, align 4
@float64_eq_signaling = common dso_local global i32 0, align 4
@float64_le_quiet = common dso_local global i32 0, align 4
@float64_lt_quiet = common dso_local global i32 0, align 4
@float128_add = common dso_local global i32 0, align 4
@float128_div = common dso_local global i32 0, align 4
@float128_eq = common dso_local global i32 0, align 4
@float128_eq_signaling = common dso_local global i32 0, align 4
@float128_le = common dso_local global i32 0, align 4
@float128_le_quiet = common dso_local global i32 0, align 4
@float128_lt = common dso_local global i32 0, align 4
@float128_lt_quiet = common dso_local global i32 0, align 4
@float128_mul = common dso_local global i32 0, align 4
@float128_rem = common dso_local global i32 0, align 4
@float128_round_to_int = common dso_local global i32 0, align 4
@float128_sqrt = common dso_local global i32 0, align 4
@float128_sub = common dso_local global i32 0, align 4
@float128_to_float32 = common dso_local global i32 0, align 4
@float128_to_float64 = common dso_local global i32 0, align 4
@float128_to_floatx80 = common dso_local global i32 0, align 4
@float128_to_int32 = common dso_local global i32 0, align 4
@float128_to_int32_round_to_zero = common dso_local global i32 0, align 4
@float128_to_int64 = common dso_local global i32 0, align 4
@float128_to_int64_round_to_zero = common dso_local global i32 0, align 4
@float32_to_float128 = common dso_local global i32 0, align 4
@float32_to_floatx80 = common dso_local global i32 0, align 4
@float64_to_float128 = common dso_local global i32 0, align 4
@float64_to_floatx80 = common dso_local global i32 0, align 4
@floatx80_add = common dso_local global i32 0, align 4
@floatx80_div = common dso_local global i32 0, align 4
@floatx80_eq = common dso_local global i32 0, align 4
@floatx80_eq_signaling = common dso_local global i32 0, align 4
@floatx80_le = common dso_local global i32 0, align 4
@floatx80_le_quiet = common dso_local global i32 0, align 4
@floatx80_lt = common dso_local global i32 0, align 4
@floatx80_lt_quiet = common dso_local global i32 0, align 4
@floatx80_mul = common dso_local global i32 0, align 4
@floatx80_rem = common dso_local global i32 0, align 4
@floatx80_round_to_int = common dso_local global i32 0, align 4
@floatx80_rounding_precision = common dso_local global i32 0, align 4
@floatx80_sqrt = common dso_local global i32 0, align 4
@floatx80_sub = common dso_local global i32 0, align 4
@floatx80_to_float128 = common dso_local global i32 0, align 4
@floatx80_to_float32 = common dso_local global i32 0, align 4
@floatx80_to_float64 = common dso_local global i32 0, align 4
@floatx80_to_int32 = common dso_local global i32 0, align 4
@floatx80_to_int32_round_to_zero = common dso_local global i32 0, align 4
@floatx80_to_int64 = common dso_local global i32 0, align 4
@floatx80_to_int64_round_to_zero = common dso_local global i32 0, align 4
@int32_to_float128 = common dso_local global i32 0, align 4
@int32_to_floatx80 = common dso_local global i32 0, align 4
@int64_to_float128 = common dso_local global i32 0, align 4
@int64_to_floatx80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i32)* @timeFunctionVariety to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeFunctionVariety(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @functionName, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** @roundingPrecisionName, align 8
  br label %30

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 64
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** @roundingPrecisionName, align 8
  br label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 80
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** @roundingPrecisionName, align 8
  br label %28

27:                                               ; preds = %23
  store i8* null, i8** @roundingPrecisionName, align 8
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %22
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %42 [
    i32 0, label %32
    i32 132, label %34
    i32 131, label %36
    i32 133, label %38
    i32 130, label %40
  ]

32:                                               ; preds = %30
  store i8* null, i8** @roundingModeName, align 8
  %33 = load i64, i64* @float_round_nearest_even, align 8
  store i64 %33, i64* %9, align 8
  br label %42

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** @roundingModeName, align 8
  %35 = load i64, i64* @float_round_nearest_even, align 8
  store i64 %35, i64* %9, align 8
  br label %42

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** @roundingModeName, align 8
  %37 = load i64, i64* @float_round_to_zero, align 8
  store i64 %37, i64* %9, align 8
  br label %42

38:                                               ; preds = %30
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** @roundingModeName, align 8
  %39 = load i64, i64* @float_round_down, align 8
  store i64 %39, i64* %9, align 8
  br label %42

40:                                               ; preds = %30
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** @roundingModeName, align 8
  %41 = load i64, i64* @float_round_up, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %30, %40, %38, %36, %34, %32
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* @float_rounding_mode, align 8
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %51 [
    i32 0, label %45
    i32 128, label %47
    i32 129, label %49
  ]

45:                                               ; preds = %42
  store i8* null, i8** @tininessModeName, align 8
  %46 = load i32, i32* @float_tininess_after_rounding, align 4
  store i32 %46, i32* %10, align 4
  br label %51

47:                                               ; preds = %42
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** @tininessModeName, align 8
  %48 = load i32, i32* @float_tininess_before_rounding, align 4
  store i32 %48, i32* %10, align 4
  br label %51

49:                                               ; preds = %42
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** @tininessModeName, align 8
  %50 = load i32, i32* @float_tininess_after_rounding, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %42, %49, %47, %45
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* @float_detect_tininess, align 4
  %53 = load i64, i64* %5, align 8
  switch i64 %53, label %174 [
    i64 140, label %54
    i64 139, label %57
    i64 136, label %60
    i64 135, label %63
    i64 185, label %66
    i64 184, label %69
    i64 183, label %72
    i64 182, label %75
    i64 187, label %78
    i64 191, label %81
    i64 201, label %84
    i64 189, label %87
    i64 193, label %90
    i64 200, label %93
    i64 192, label %96
    i64 190, label %99
    i64 199, label %102
    i64 197, label %105
    i64 195, label %108
    i64 198, label %111
    i64 196, label %114
    i64 194, label %117
    i64 165, label %120
    i64 164, label %123
    i64 163, label %126
    i64 162, label %129
    i64 167, label %132
    i64 171, label %135
    i64 181, label %138
    i64 169, label %141
    i64 173, label %144
    i64 180, label %147
    i64 172, label %150
    i64 170, label %153
    i64 179, label %156
    i64 177, label %159
    i64 175, label %162
    i64 178, label %165
    i64 176, label %168
    i64 174, label %171
  ]

54:                                               ; preds = %51
  %55 = load i32, i32* @int32_to_float32, align 4
  %56 = call i32 @time_a_int32_z_float32(i32 %55)
  br label %174

57:                                               ; preds = %51
  %58 = load i32, i32* @int32_to_float64, align 4
  %59 = call i32 @time_a_int32_z_float64(i32 %58)
  br label %174

60:                                               ; preds = %51
  %61 = load i32, i32* @int64_to_float32, align 4
  %62 = call i32 @time_a_int64_z_float32(i32 %61)
  br label %174

63:                                               ; preds = %51
  %64 = load i32, i32* @int64_to_float64, align 4
  %65 = call i32 @time_a_int64_z_float64(i32 %64)
  br label %174

66:                                               ; preds = %51
  %67 = load i32, i32* @float32_to_int32, align 4
  %68 = call i32 @time_a_float32_z_int32(i32 %67)
  br label %174

69:                                               ; preds = %51
  %70 = load i32, i32* @float32_to_int32_round_to_zero, align 4
  %71 = call i32 @time_a_float32_z_int32(i32 %70)
  br label %174

72:                                               ; preds = %51
  %73 = load i32, i32* @float32_to_int64, align 4
  %74 = call i32 @time_a_float32_z_int64(i32 %73)
  br label %174

75:                                               ; preds = %51
  %76 = load i32, i32* @float32_to_int64_round_to_zero, align 4
  %77 = call i32 @time_a_float32_z_int64(i32 %76)
  br label %174

78:                                               ; preds = %51
  %79 = load i32, i32* @float32_to_float64, align 4
  %80 = call i32 @time_a_float32_z_float64(i32 %79)
  br label %174

81:                                               ; preds = %51
  %82 = load i32, i32* @float32_round_to_int, align 4
  %83 = call i32 @time_az_float32(i32 %82)
  br label %174

84:                                               ; preds = %51
  %85 = load i32, i32* @float32_add, align 4
  %86 = call i32 @time_abz_float32(i32 %85)
  br label %174

87:                                               ; preds = %51
  %88 = load i32, i32* @float32_sub, align 4
  %89 = call i32 @time_abz_float32(i32 %88)
  br label %174

90:                                               ; preds = %51
  %91 = load i32, i32* @float32_mul, align 4
  %92 = call i32 @time_abz_float32(i32 %91)
  br label %174

93:                                               ; preds = %51
  %94 = load i32, i32* @float32_div, align 4
  %95 = call i32 @time_abz_float32(i32 %94)
  br label %174

96:                                               ; preds = %51
  %97 = load i32, i32* @float32_rem, align 4
  %98 = call i32 @time_abz_float32(i32 %97)
  br label %174

99:                                               ; preds = %51
  %100 = load i32, i32* @float32_sqrt, align 4
  %101 = call i32 @time_az_float32_pos(i32 %100)
  br label %174

102:                                              ; preds = %51
  %103 = load i32, i32* @float32_eq, align 4
  %104 = call i32 @time_ab_float32_z_flag(i32 %103)
  br label %174

105:                                              ; preds = %51
  %106 = load i32, i32* @float32_le, align 4
  %107 = call i32 @time_ab_float32_z_flag(i32 %106)
  br label %174

108:                                              ; preds = %51
  %109 = load i32, i32* @float32_lt, align 4
  %110 = call i32 @time_ab_float32_z_flag(i32 %109)
  br label %174

111:                                              ; preds = %51
  %112 = load i32, i32* @float32_eq_signaling, align 4
  %113 = call i32 @time_ab_float32_z_flag(i32 %112)
  br label %174

114:                                              ; preds = %51
  %115 = load i32, i32* @float32_le_quiet, align 4
  %116 = call i32 @time_ab_float32_z_flag(i32 %115)
  br label %174

117:                                              ; preds = %51
  %118 = load i32, i32* @float32_lt_quiet, align 4
  %119 = call i32 @time_ab_float32_z_flag(i32 %118)
  br label %174

120:                                              ; preds = %51
  %121 = load i32, i32* @float64_to_int32, align 4
  %122 = call i32 @time_a_float64_z_int32(i32 %121)
  br label %174

123:                                              ; preds = %51
  %124 = load i32, i32* @float64_to_int32_round_to_zero, align 4
  %125 = call i32 @time_a_float64_z_int32(i32 %124)
  br label %174

126:                                              ; preds = %51
  %127 = load i32, i32* @float64_to_int64, align 4
  %128 = call i32 @time_a_float64_z_int64(i32 %127)
  br label %174

129:                                              ; preds = %51
  %130 = load i32, i32* @float64_to_int64_round_to_zero, align 4
  %131 = call i32 @time_a_float64_z_int64(i32 %130)
  br label %174

132:                                              ; preds = %51
  %133 = load i32, i32* @float64_to_float32, align 4
  %134 = call i32 @time_a_float64_z_float32(i32 %133)
  br label %174

135:                                              ; preds = %51
  %136 = load i32, i32* @float64_round_to_int, align 4
  %137 = call i32 @time_az_float64(i32 %136)
  br label %174

138:                                              ; preds = %51
  %139 = load i32, i32* @float64_add, align 4
  %140 = call i32 @time_abz_float64(i32 %139)
  br label %174

141:                                              ; preds = %51
  %142 = load i32, i32* @float64_sub, align 4
  %143 = call i32 @time_abz_float64(i32 %142)
  br label %174

144:                                              ; preds = %51
  %145 = load i32, i32* @float64_mul, align 4
  %146 = call i32 @time_abz_float64(i32 %145)
  br label %174

147:                                              ; preds = %51
  %148 = load i32, i32* @float64_div, align 4
  %149 = call i32 @time_abz_float64(i32 %148)
  br label %174

150:                                              ; preds = %51
  %151 = load i32, i32* @float64_rem, align 4
  %152 = call i32 @time_abz_float64(i32 %151)
  br label %174

153:                                              ; preds = %51
  %154 = load i32, i32* @float64_sqrt, align 4
  %155 = call i32 @time_az_float64_pos(i32 %154)
  br label %174

156:                                              ; preds = %51
  %157 = load i32, i32* @float64_eq, align 4
  %158 = call i32 @time_ab_float64_z_flag(i32 %157)
  br label %174

159:                                              ; preds = %51
  %160 = load i32, i32* @float64_le, align 4
  %161 = call i32 @time_ab_float64_z_flag(i32 %160)
  br label %174

162:                                              ; preds = %51
  %163 = load i32, i32* @float64_lt, align 4
  %164 = call i32 @time_ab_float64_z_flag(i32 %163)
  br label %174

165:                                              ; preds = %51
  %166 = load i32, i32* @float64_eq_signaling, align 4
  %167 = call i32 @time_ab_float64_z_flag(i32 %166)
  br label %174

168:                                              ; preds = %51
  %169 = load i32, i32* @float64_le_quiet, align 4
  %170 = call i32 @time_ab_float64_z_flag(i32 %169)
  br label %174

171:                                              ; preds = %51
  %172 = load i32, i32* @float64_lt_quiet, align 4
  %173 = call i32 @time_ab_float64_z_flag(i32 %172)
  br label %174

174:                                              ; preds = %51, %171, %168, %165, %162, %159, %156, %153, %150, %147, %144, %141, %138, %135, %132, %129, %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54
  ret void
}

declare dso_local i32 @time_a_int32_z_float32(i32) #1

declare dso_local i32 @time_a_int32_z_float64(i32) #1

declare dso_local i32 @time_a_int64_z_float32(i32) #1

declare dso_local i32 @time_a_int64_z_float64(i32) #1

declare dso_local i32 @time_a_float32_z_int32(i32) #1

declare dso_local i32 @time_a_float32_z_int64(i32) #1

declare dso_local i32 @time_a_float32_z_float64(i32) #1

declare dso_local i32 @time_az_float32(i32) #1

declare dso_local i32 @time_abz_float32(i32) #1

declare dso_local i32 @time_az_float32_pos(i32) #1

declare dso_local i32 @time_ab_float32_z_flag(i32) #1

declare dso_local i32 @time_a_float64_z_int32(i32) #1

declare dso_local i32 @time_a_float64_z_int64(i32) #1

declare dso_local i32 @time_a_float64_z_float32(i32) #1

declare dso_local i32 @time_az_float64(i32) #1

declare dso_local i32 @time_abz_float64(i32) #1

declare dso_local i32 @time_az_float64_pos(i32) #1

declare dso_local i32 @time_ab_float64_z_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
