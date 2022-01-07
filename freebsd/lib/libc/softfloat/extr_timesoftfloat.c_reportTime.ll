; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/softfloat/extr_timesoftfloat.c_reportTime.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/softfloat/extr_timesoftfloat.c_reportTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"%8.1f kops/s: %s\00", align 1
@CLOCKS_PER_SEC = common dso_local global float 0.000000e+00, align 4
@functionName = common dso_local global i8* null, align 8
@roundingModeName = common dso_local global i8* null, align 8
@roundingPrecisionName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c", precision \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c", rounding \00", align 1
@tininessModeName = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c", tininess \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" rounding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, i64)* @reportTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reportTime(float %0, i64 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i64, align 8
  store float %0, float* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load float, float* %3, align 4
  %6 = load i64, i64* %4, align 8
  %7 = sitofp i64 %6 to float
  %8 = load float, float* @CLOCKS_PER_SEC, align 4
  %9 = fdiv float %7, %8
  %10 = fdiv float %5, %9
  %11 = fdiv float %10, 1.000000e+03
  %12 = load i8*, i8** @functionName, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), float %11, i8* %12)
  %14 = load i8*, i8** @roundingModeName, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load i8*, i8** @roundingPrecisionName, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i8*, i8** @roundingPrecisionName, align 8
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @fputs(i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i8*, i8** @roundingModeName, align 8
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @fputs(i8* %28, i32 %29)
  %31 = load i8*, i8** @tininessModeName, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load i32, i32* @stdout, align 4
  %35 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i8*, i8** @tininessModeName, align 8
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @fputs(i8* %36, i32 %37)
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %33, %25
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @fputc(i8 signext 10, i32 %43)
  ret void
}

declare dso_local i32 @printf(i8*, float, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
