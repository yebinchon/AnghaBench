; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_progress_sizes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_progress_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progress_sizes.buf = internal global [128 x i8] zeroinitializer, align 16
@NICESTR_B = common dso_local global i32 0, align 4
@NICESTR_MIB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s / %s\00", align 1
@NICESTR_TIB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" > %.3f\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" = %.3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i32)* @progress_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @progress_sizes(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @progress_sizes.buf, i64 0, i64 0), i8** %7, align 8
  store i64 128, i64* %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @NICESTR_B, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @NICESTR_MIB, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %9, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @NICESTR_TIB, align 4
  %22 = call i32 @uint64_to_nicestr(i64 %19, i32 %20, i32 %21, i32 0, i32 0)
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @NICESTR_TIB, align 4
  %26 = call i32 @uint64_to_nicestr(i64 %23, i32 %24, i32 %25, i32 0, i32 1)
  %27 = call i32 @my_snprintf(i8** %7, i64* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %17
  %31 = load i64, i64* %4, align 8
  %32 = sitofp i64 %31 to double
  %33 = load i64, i64* %5, align 8
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %32, %34
  br label %37

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi double [ %35, %30 ], [ 1.600000e+01, %36 ]
  store double %38, double* %10, align 8
  %39 = load double, double* %10, align 8
  %40 = fcmp ogt double %39, 9.999000e+00
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @snprintf(i8* %42, i64 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), double 9.999000e+00)
  br label %50

45:                                               ; preds = %37
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load double, double* %10, align 8
  %49 = call i32 @snprintf(i8* %46, i64 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double %48)
  br label %50

50:                                               ; preds = %45, %41
  ret i8* getelementptr inbounds ([128 x i8], [128 x i8]* @progress_sizes.buf, i64 0, i64 0)
}

declare dso_local i32 @my_snprintf(i8**, i64*, i8*, i32, i32) #1

declare dso_local i32 @uint64_to_nicestr(i64, i32, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
