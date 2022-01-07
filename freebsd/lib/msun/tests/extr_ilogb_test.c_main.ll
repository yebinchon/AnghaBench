; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_ilogb_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_ilogb_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"1..3\0A\00", align 1
@FP_ILOGB0 = common dso_local global i32 0, align 4
@NAN = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@FP_ILOGBNAN = common dso_local global i32 0, align 4
@INFINITY = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@INT_MAX = common dso_local global i32 0, align 4
@DBL_MIN_EXP = common dso_local global i32 0, align 4
@DBL_MANT_DIG = common dso_local global i32 0, align 4
@DBL_MAX_EXP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"0x1.p%d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ok 1 - ilogb\0A\00", align 1
@FLT_MIN_EXP = common dso_local global i32 0, align 4
@FLT_MANT_DIG = common dso_local global i32 0, align 4
@FLT_MAX_EXP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"ok 2 - ilogbf\0A\00", align 1
@LDBL_MIN_EXP = common dso_local global i32 0, align 4
@LDBL_MANT_DIG = common dso_local global i32 0, align 4
@LDBL_MAX_EXP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"ok 3 - ilogbl\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [128 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca x86_fp80, align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @ilogb(double 0.000000e+00) #3
  %11 = load i32, i32* @FP_ILOGB0, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load x86_fp80, x86_fp80* @NAN, align 16
  %16 = fptrunc x86_fp80 %15 to double
  %17 = call i32 @ilogb(double %16) #3
  %18 = load i32, i32* @FP_ILOGBNAN, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load x86_fp80, x86_fp80* @INFINITY, align 16
  %23 = fptrunc x86_fp80 %22 to double
  %24 = call i32 @ilogb(double %23) #3
  %25 = load i32, i32* @INT_MAX, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* @DBL_MIN_EXP, align 4
  %30 = load i32, i32* @DBL_MANT_DIG, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %55, %0
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @DBL_MAX_EXP, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @snprintf(i8* %37, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %41 = call double @strtod(i8* %40, i8** %3)
  store double %41, double* %4, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load double, double* %4, align 8
  %49 = call i32 @ilogb(double %48) #3
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %36
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %32

58:                                               ; preds = %32
  %59 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @ilogbf(float 0.000000e+00) #3
  %61 = load i32, i32* @FP_ILOGB0, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load x86_fp80, x86_fp80* @NAN, align 16
  %66 = fptrunc x86_fp80 %65 to float
  %67 = call i32 @ilogbf(float %66) #3
  %68 = load i32, i32* @FP_ILOGBNAN, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load x86_fp80, x86_fp80* @INFINITY, align 16
  %73 = fptrunc x86_fp80 %72 to float
  %74 = call i32 @ilogbf(float %73) #3
  %75 = load i32, i32* @INT_MAX, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* @FLT_MIN_EXP, align 4
  %80 = load i32, i32* @FLT_MANT_DIG, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %105, %58
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @FLT_MAX_EXP, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %82
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @snprintf(i8* %87, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %91 = call float @strtof(i8* %90, i8** %3)
  store float %91, float* %5, align 4
  %92 = load i8*, i8** %3, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load float, float* %5, align 4
  %99 = call i32 @ilogbf(float %98) #3
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  br label %105

105:                                              ; preds = %86
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %82

108:                                              ; preds = %82
  %109 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %110 = call i32 @ilogbl(x86_fp80 0xK00000000000000000000) #3
  %111 = load i32, i32* @FP_ILOGB0, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load x86_fp80, x86_fp80* @NAN, align 16
  %116 = call i32 @ilogbl(x86_fp80 %115) #3
  %117 = load i32, i32* @FP_ILOGBNAN, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load x86_fp80, x86_fp80* @INFINITY, align 16
  %122 = call i32 @ilogbl(x86_fp80 %121) #3
  %123 = load i32, i32* @INT_MAX, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i32, i32* @LDBL_MIN_EXP, align 4
  %128 = load i32, i32* @LDBL_MANT_DIG, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %153, %108
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @LDBL_MAX_EXP, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %156

134:                                              ; preds = %130
  %135 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @snprintf(i8* %135, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %139 = call x86_fp80 @strtold(i8* %138, i8** %3)
  store x86_fp80 %139, x86_fp80* %6, align 16
  %140 = load i8*, i8** %3, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load x86_fp80, x86_fp80* %6, align 16
  %147 = call i32 @ilogbl(x86_fp80 %146) #3
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  br label %153

153:                                              ; preds = %134
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %130

156:                                              ; preds = %130
  %157 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @ilogb(double) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local double @strtod(i8*, i8**) #1

; Function Attrs: nounwind
declare dso_local i32 @ilogbf(float) #2

declare dso_local float @strtof(i8*, i8**) #1

; Function Attrs: nounwind
declare dso_local i32 @ilogbl(x86_fp80) #2

declare dso_local x86_fp80 @strtold(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
