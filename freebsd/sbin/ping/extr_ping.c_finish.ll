; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping/extr_ping.c_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping/extr_ping.c_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"--- %s ping statistics ---\0A\00", align 1
@hostname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%ld packets transmitted, \00", align 1
@ntransmitted = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%ld packets received, \00", align 1
@nreceived = common dso_local global i32 0, align 4
@nrepeats = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"+%ld duplicates, \00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"-- somebody's printing up packets!\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%.1f%% packet loss\00", align 1
@nrcvtimeout = common dso_local global double 0.000000e+00, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c", %ld packets out of wait time\00", align 1
@timing = common dso_local global i64 0, align 8
@tsum = common dso_local global double 0.000000e+00, align 8
@tsumsq = common dso_local global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [56 x i8] c"round-trip min/avg/max/stddev = %.3f/%.3f/%.3f/%.3f ms\0A\00", align 1
@tmin = common dso_local global double 0.000000e+00, align 8
@tmax = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = load i32, i32* @SIGINT, align 4
  %5 = load i32, i32* @SIG_IGN, align 4
  %6 = call i32 @signal(i32 %4, i32 %5)
  %7 = load i32, i32* @SIGALRM, align 4
  %8 = load i32, i32* @SIG_IGN, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = call i32 @putchar(i8 signext 10)
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 @fflush(i32 %11)
  %13 = load i8*, i8** @hostname, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @ntransmitted, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @nreceived, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load double, double* @nrepeats, align 8
  %20 = fcmp une double %19, 0.000000e+00
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load double, double* @nrepeats, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), double %22)
  br label %24

24:                                               ; preds = %21, %0
  %25 = load i32, i32* @ntransmitted, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i32, i32* @nreceived, align 4
  %29 = load i32, i32* @ntransmitted, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %43

33:                                               ; preds = %27
  %34 = load i32, i32* @ntransmitted, align 4
  %35 = load i32, i32* @nreceived, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sitofp i32 %36 to double
  %38 = fmul double %37, 1.000000e+02
  %39 = load i32, i32* @ntransmitted, align 4
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %38, %40
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), double %41)
  br label %43

43:                                               ; preds = %33, %31
  br label %44

44:                                               ; preds = %43, %24
  %45 = load double, double* @nrcvtimeout, align 8
  %46 = fcmp une double %45, 0.000000e+00
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load double, double* @nrcvtimeout, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), double %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = call i32 @putchar(i8 signext 10)
  %52 = load i32, i32* @nreceived, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load i64, i64* @timing, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load i32, i32* @nreceived, align 4
  %59 = sitofp i32 %58 to double
  %60 = load double, double* @nrepeats, align 8
  %61 = fadd double %59, %60
  store double %61, double* %1, align 8
  %62 = load double, double* @tsum, align 8
  %63 = load double, double* %1, align 8
  %64 = fdiv double %62, %63
  store double %64, double* %2, align 8
  %65 = load double, double* @tsumsq, align 8
  %66 = load double, double* %1, align 8
  %67 = fdiv double %65, %66
  %68 = load double, double* %2, align 8
  %69 = load double, double* %2, align 8
  %70 = fmul double %68, %69
  %71 = fsub double %67, %70
  store double %71, double* %3, align 8
  %72 = load double, double* @tmin, align 8
  %73 = load double, double* %2, align 8
  %74 = load double, double* @tmax, align 8
  %75 = load double, double* %3, align 8
  %76 = call double @sqrt(double %75) #4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), double %72, double %73, double %74, double %76)
  br label %78

78:                                               ; preds = %57, %54, %50
  %79 = load i32, i32* @nreceived, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 @exit(i32 0) #5
  unreachable

83:                                               ; preds = %78
  %84 = call i32 @exit(i32 2) #5
  unreachable
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
