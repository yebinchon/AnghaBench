; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_test-changelist.c_get_cpu_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_test-changelist.c_get_cpu_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_usage_timer = type { double, i32, i32, i32, i32 }
%struct.timeval = type { double, double }

@CLOCKS_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_usage_timer*, double*, double*, double*)* @get_cpu_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_cpu_usage(%struct.cpu_usage_timer* %0, double* %1, double* %2, double* %3) #0 {
  %5 = alloca %struct.cpu_usage_timer*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.cpu_usage_timer* %0, %struct.cpu_usage_timer** %5, align 8
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %14 = call double (...) @clock()
  store double %14, double* %9, align 8
  %15 = load double, double* %9, align 8
  %16 = load %struct.cpu_usage_timer*, %struct.cpu_usage_timer** %5, align 8
  %17 = getelementptr inbounds %struct.cpu_usage_timer, %struct.cpu_usage_timer* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fsub double %15, %18
  %20 = load i64, i64* @CLOCKS_PER_SEC, align 8
  %21 = sitofp i64 %20 to double
  %22 = fdiv double %19, %21
  store double %22, double* %13, align 8
  %23 = call i32 @evutil_gettimeofday(%struct.timeval* %10, i32* null)
  %24 = load %struct.cpu_usage_timer*, %struct.cpu_usage_timer** %5, align 8
  %25 = getelementptr inbounds %struct.cpu_usage_timer, %struct.cpu_usage_timer* %24, i32 0, i32 1
  %26 = call i32 @evutil_timersub(%struct.timeval* %10, i32* %25, %struct.timeval* %11)
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %30 = load double, double* %29, align 8
  %31 = fdiv double %30, 1.000000e+06
  %32 = fadd double %28, %31
  store double %32, double* %12, align 8
  %33 = load double, double* %12, align 8
  %34 = load double*, double** %6, align 8
  store double %33, double* %34, align 8
  %35 = load double, double* %13, align 8
  %36 = load double*, double** %7, align 8
  store double %35, double* %36, align 8
  %37 = load double, double* %13, align 8
  %38 = load double, double* %12, align 8
  %39 = fdiv double %37, %38
  %40 = load double*, double** %8, align 8
  store double %39, double* %40, align 8
  ret void
}

declare dso_local double @clock(...) #1

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @evutil_timersub(%struct.timeval*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
