; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslstartup.c_AslCheckForErrorExit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslstartup.c_AslCheckForErrorExit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_IgnoreErrors = common dso_local global i32 0, align 4
@AslGbl_ExceptionCount = common dso_local global i64* null, align 8
@ASL_ERROR = common dso_local global i64 0, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@AslGbl_WarningsAsErrors = common dso_local global i64 0, align 8
@ASL_WARNING = common dso_local global i64 0, align 8
@ASL_WARNING2 = common dso_local global i64 0, align 8
@ASL_WARNING3 = common dso_local global i64 0, align 8
@ASL_MSG_WARNING_AS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"(reporting warnings as errors)\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AslCheckForErrorExit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @AslGbl_IgnoreErrors, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %40, label %4

4:                                                ; preds = %0
  %5 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %6 = load i64, i64* @ASL_ERROR, align 8
  %7 = getelementptr inbounds i64, i64* %5, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = load i32, i32* @AE_ERROR, align 4
  store i32 %11, i32* %1, align 4
  br label %42

12:                                               ; preds = %4
  %13 = load i64, i64* @AslGbl_WarningsAsErrors, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %17 = load i64, i64* @ASL_WARNING, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %23 = load i64, i64* @ASL_WARNING2, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %29 = load i64, i64* @ASL_WARNING3, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27, %21, %15
  %34 = load i64, i64* @ASL_ERROR, align 8
  %35 = load i32, i32* @ASL_MSG_WARNING_AS_ERROR, align 4
  %36 = call i32 @AslError(i64 %34, i32 %35, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @AE_ERROR, align 4
  store i32 %37, i32* %1, align 4
  br label %42

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %12
  br label %40

40:                                               ; preds = %39, %0
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %33, %10
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @AslError(i64, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
