; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping/extr_ping.c_check_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping/extr_ping.c_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@siginfo_p = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"\0D%ld/%ld packets received (%.1f%%)\00", align 1
@nreceived = common dso_local global double 0.000000e+00, align 8
@ntransmitted = common dso_local global i32 0, align 4
@timing = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c" %.3f min / %.3f avg / %.3f max\00", align 1
@tmin = common dso_local global double 0.000000e+00, align 8
@tsum = common dso_local global double 0.000000e+00, align 8
@nrepeats = common dso_local global double 0.000000e+00, align 8
@tmax = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_status() #0 {
  %1 = load i64, i64* @siginfo_p, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %37

3:                                                ; preds = %0
  store i64 0, i64* @siginfo_p, align 8
  %4 = load i32, i32* @stderr, align 4
  %5 = load double, double* @nreceived, align 8
  %6 = load i32, i32* @ntransmitted, align 4
  %7 = load i32, i32* @ntransmitted, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load double, double* @nreceived, align 8
  %11 = fmul double %10, 1.000000e+02
  %12 = load i32, i32* @ntransmitted, align 4
  %13 = sitofp i32 %12 to double
  %14 = fdiv double %11, %13
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi double [ %14, %9 ], [ 0.000000e+00, %15 ]
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), double %5, i32 %6, double %17)
  %19 = load double, double* @nreceived, align 8
  %20 = fcmp une double %19, 0.000000e+00
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i64, i64* @timing, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = load double, double* @tmin, align 8
  %27 = load double, double* @tsum, align 8
  %28 = load double, double* @nreceived, align 8
  %29 = load double, double* @nrepeats, align 8
  %30 = fadd double %28, %29
  %31 = fdiv double %27, %30
  %32 = load double, double* @tmax, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), double %26, double %31, double %32)
  br label %34

34:                                               ; preds = %24, %21, %16
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %0
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
