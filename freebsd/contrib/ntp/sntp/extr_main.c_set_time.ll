; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_set_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time_adjusted = common dso_local global i64 0, align 8
@EX_OK = common dso_local global i32 0, align 4
@STEP = common dso_local global i32 0, align 4
@SLEW = common dso_local global i32 0, align 4
@steplimit = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@EX_SOFTWARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_time(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %0, double* %3, align 8
  %5 = load i64, i64* @time_adjusted, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EX_OK, align 4
  store i32 %8, i32* %2, align 4
  br label %62

9:                                                ; preds = %1
  %10 = load i32, i32* @STEP, align 4
  %11 = call i64 @ENABLED_OPT(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load i32, i32* @SLEW, align 4
  %15 = call i64 @ENABLED_OPT(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load i32, i32* @SLEW, align 4
  %19 = call i64 @ENABLED_OPT(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load double, double* %3, align 8
  %23 = call i64 @fabs(double %22)
  %24 = load i64, i64* @steplimit, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %21, %13
  %27 = load double, double* %3, align 8
  %28 = call i32 @step_systime(double %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 1, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @TRUE, align 8
  store i64 %32, i64* @time_adjusted, align 8
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i64, i64* @time_adjusted, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @EX_OK, align 4
  br label %39

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 1, %38 ]
  store i32 %40, i32* %2, align 4
  br label %62

41:                                               ; preds = %21, %17, %9
  %42 = load i32, i32* @SLEW, align 4
  %43 = call i64 @ENABLED_OPT(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load double, double* %3, align 8
  %47 = call i32 @adj_systime(double %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 1, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @TRUE, align 8
  store i64 %51, i64* @time_adjusted, align 8
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i64, i64* @time_adjusted, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @EX_OK, align 4
  br label %58

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 1, %57 ]
  store i32 %59, i32* %2, align 4
  br label %62

60:                                               ; preds = %41
  %61 = load i32, i32* @EX_SOFTWARE, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %58, %39, %7
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @ENABLED_OPT(i32) #1

declare dso_local i64 @fabs(double) #1

declare dso_local i32 @step_systime(double) #1

declare dso_local i32 @adj_systime(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
