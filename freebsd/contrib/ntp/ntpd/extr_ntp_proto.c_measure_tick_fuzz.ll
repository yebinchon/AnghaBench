; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_measure_tick_fuzz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_measure_tick_fuzz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXSTEP = common dso_local global double 0.000000e+00, align 8
@MINSTEP = common dso_local global i32 0, align 4
@MAXLOOPS = common dso_local global i32 0, align 4
@MINCHANGES = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Fatal error: precision could not be measured (MINSTEP too large?)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @measure_tick_fuzz() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load double, double* @MAXSTEP, align 8
  store double %11, double* %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @MINSTEP, align 4
  %13 = call i32 @DTOLFP(i32 %12, i32* %1)
  %14 = call i32 @get_systime(i32* %3)
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %47, %0
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MAXLOOPS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @MINCHANGES, align 4
  %22 = icmp slt i32 %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %50

25:                                               ; preds = %23
  %26 = call i32 @get_systime(i32* %2)
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %4, align 4
  %28 = call i32 @L_SUB(i32* %4, i32* %3)
  %29 = load i32, i32* %2, align 4
  store i32 %29, i32* %3, align 4
  %30 = call i64 @L_ISGT(i32* %4, i32* %1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @max(i64 %33, i64 %34)
  store i64 %35, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = load double, double* %6, align 8
  %39 = call i32 @LFPTOD(i32* %4, double %38)
  %40 = load double, double* %6, align 8
  %41 = load double, double* %5, align 8
  %42 = call double @min(double %40, double %41)
  store double %42, double* %5, align 8
  br label %46

43:                                               ; preds = %25
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %43, %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %15

50:                                               ; preds = %23
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @MINCHANGES, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @LOG_ERR, align 4
  %56 = call i32 @msyslog(i32 %55, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %50
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 0, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load double, double* %5, align 8
  %63 = call i32 @set_sys_fuzz(double %62)
  br label %70

64:                                               ; preds = %58
  %65 = load double, double* %5, align 8
  %66 = load i64, i64* %8, align 8
  %67 = sitofp i64 %66 to double
  %68 = fdiv double %65, %67
  %69 = call i32 @set_sys_fuzz(double %68)
  br label %70

70:                                               ; preds = %64, %61
  %71 = load double, double* %5, align 8
  ret double %71
}

declare dso_local i32 @DTOLFP(i32, i32*) #1

declare dso_local i32 @get_systime(i32*) #1

declare dso_local i32 @L_SUB(i32*, i32*) #1

declare dso_local i64 @L_ISGT(i32*, i32*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @LFPTOD(i32*, double) #1

declare dso_local double @min(double, double) #1

declare dso_local i32 @msyslog(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @set_sys_fuzz(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
