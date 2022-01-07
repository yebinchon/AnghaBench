; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_summary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"\0A--- %s ping6 statistics ---\0A\00", align 1
@hostname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%ld packets transmitted, \00", align 1
@ntransmitted = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%ld packets received, \00", align 1
@nreceived = common dso_local global i32 0, align 4
@nrepeats = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"+%ld duplicates, \00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"-- somebody's duplicating packets!\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%.1f%% packet loss\00", align 1
@nrcvtimeout = common dso_local global double 0.000000e+00, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c", %ld packets out of wait time\00", align 1
@timing = common dso_local global i64 0, align 8
@tsum = common dso_local global double 0.000000e+00, align 8
@tsumsq = common dso_local global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [57 x i8] c"round-trip min/avg/max/std-dev = %.3f/%.3f/%.3f/%.3f ms\0A\00", align 1
@tmin = common dso_local global double 0.000000e+00, align 8
@tmax = common dso_local global double 0.000000e+00, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @summary() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = load i8*, i8** @hostname, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i32, i32* @ntransmitted, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @nreceived, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  %10 = load double, double* @nrepeats, align 8
  %11 = fcmp une double %10, 0.000000e+00
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load double, double* @nrepeats, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), double %13)
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i32, i32* @ntransmitted, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load i32, i32* @nreceived, align 4
  %20 = load i32, i32* @ntransmitted, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %35

24:                                               ; preds = %18
  %25 = load i32, i32* @ntransmitted, align 4
  %26 = sitofp i32 %25 to double
  %27 = load i32, i32* @nreceived, align 4
  %28 = sitofp i32 %27 to double
  %29 = fsub double %26, %28
  %30 = fmul double %29, 1.000000e+02
  %31 = load i32, i32* @ntransmitted, align 4
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %30, %32
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), double %33)
  br label %35

35:                                               ; preds = %24, %22
  br label %36

36:                                               ; preds = %35, %15
  %37 = load double, double* @nrcvtimeout, align 8
  %38 = fcmp une double %37, 0.000000e+00
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load double, double* @nrcvtimeout, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), double %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = call i32 @putchar(i8 signext 10)
  %44 = load i32, i32* @nreceived, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %42
  %47 = load i64, i64* @timing, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = load i32, i32* @nreceived, align 4
  %51 = sitofp i32 %50 to double
  %52 = load double, double* @nrepeats, align 8
  %53 = fadd double %51, %52
  store double %53, double* %1, align 8
  %54 = load double, double* @tsum, align 8
  %55 = load double, double* %1, align 8
  %56 = fdiv double %54, %55
  store double %56, double* %2, align 8
  %57 = load double, double* @tsumsq, align 8
  %58 = load double, double* %1, align 8
  %59 = fdiv double %57, %58
  %60 = load double, double* %2, align 8
  %61 = load double, double* %2, align 8
  %62 = fmul double %60, %61
  %63 = fsub double %59, %62
  %64 = call double @sqrt(double %63) #3
  store double %64, double* %3, align 8
  %65 = load double, double* @tmin, align 8
  %66 = load double, double* %2, align 8
  %67 = load double, double* @tmax, align 8
  %68 = load double, double* %3, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), double %65, double %66, double %67, double %68)
  %70 = load i32, i32* @stdout, align 4
  %71 = call i32 @fflush(i32 %70)
  br label %72

72:                                               ; preds = %49, %46, %42
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 @fflush(i32 %73)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
