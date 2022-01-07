; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_loopfilter.c_adj_host_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_loopfilter.c_adj_host_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clock_phi = common dso_local global i64 0, align 8
@sys_rootdisp = common dso_local global i32 0, align 4
@ntp_enable = common dso_local global i32 0, align 4
@mode_ntpdate = common dso_local global i64 0, align 8
@state = common dso_local global i64 0, align 8
@EVNT_SYNC = common dso_local global i64 0, align 8
@freq_cnt = common dso_local global i64 0, align 8
@clock_offset = common dso_local global double 0.000000e+00, align 8
@CLOCK_PLL = common dso_local global double 0.000000e+00, align 8
@sys_poll = common dso_local global i32 0, align 4
@drift_comp = common dso_local global double 0.000000e+00, align 8
@NTP_MAXFREQ = common dso_local global double 0.000000e+00, align 8
@enable_panic_check = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@kern_enable = common dso_local global i64 0, align 8
@pll_control = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adj_host_clock() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = load i64, i64* @clock_phi, align 8
  %4 = load i32, i32* @sys_rootdisp, align 4
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %5, %3
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* @sys_rootdisp, align 4
  %8 = load i32, i32* @ntp_enable, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i64, i64* @mode_ntpdate, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %0
  br label %77

14:                                               ; preds = %10
  %15 = load i64, i64* @state, align 8
  %16 = load i64, i64* @EVNT_SYNC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store double 0.000000e+00, double* %1, align 8
  br label %38

19:                                               ; preds = %14
  %20 = load i64, i64* @freq_cnt, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load double, double* @clock_offset, align 8
  %24 = load double, double* @CLOCK_PLL, align 8
  %25 = call double @ULOGTOD(i32 1)
  %26 = fmul double %24, %25
  %27 = fdiv double %23, %26
  store double %27, double* %1, align 8
  %28 = load i64, i64* @freq_cnt, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* @freq_cnt, align 8
  br label %37

30:                                               ; preds = %19
  %31 = load double, double* @clock_offset, align 8
  %32 = load double, double* @CLOCK_PLL, align 8
  %33 = load i32, i32* @sys_poll, align 4
  %34 = call double @ULOGTOD(i32 %33)
  %35 = fmul double %32, %34
  %36 = fdiv double %31, %35
  store double %36, double* %1, align 8
  br label %37

37:                                               ; preds = %30, %22
  br label %38

38:                                               ; preds = %37, %18
  %39 = load double, double* @drift_comp, align 8
  store double %39, double* %2, align 8
  %40 = load double, double* %1, align 8
  %41 = load double, double* %2, align 8
  %42 = fadd double %40, %41
  %43 = load double, double* @NTP_MAXFREQ, align 8
  %44 = fcmp ogt double %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load double, double* @NTP_MAXFREQ, align 8
  %47 = load double, double* %2, align 8
  %48 = fsub double %46, %47
  store double %48, double* %1, align 8
  br label %62

49:                                               ; preds = %38
  %50 = load double, double* %1, align 8
  %51 = load double, double* %2, align 8
  %52 = fadd double %50, %51
  %53 = load double, double* @NTP_MAXFREQ, align 8
  %54 = fneg double %53
  %55 = fcmp olt double %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load double, double* @NTP_MAXFREQ, align 8
  %58 = fneg double %57
  %59 = load double, double* %2, align 8
  %60 = fsub double %58, %59
  store double %60, double* %1, align 8
  br label %61

61:                                               ; preds = %56, %49
  br label %62

62:                                               ; preds = %61, %45
  %63 = load double, double* %1, align 8
  %64 = load double, double* @clock_offset, align 8
  %65 = fsub double %64, %63
  store double %65, double* @clock_offset, align 8
  %66 = load i64, i64* @enable_panic_check, align 8
  %67 = load i64, i64* @TRUE, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @DEBUG_INSIST(i32 %69)
  %71 = load i64, i64* @FALSE, align 8
  store i64 %71, i64* @enable_panic_check, align 8
  %72 = load double, double* %1, align 8
  %73 = load double, double* %2, align 8
  %74 = fadd double %72, %73
  %75 = call i32 @adj_systime(double %74)
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* @enable_panic_check, align 8
  br label %77

77:                                               ; preds = %62, %13
  ret void
}

declare dso_local double @ULOGTOD(i32) #1

declare dso_local i32 @DEBUG_INSIST(i32) #1

declare dso_local i32 @adj_systime(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
