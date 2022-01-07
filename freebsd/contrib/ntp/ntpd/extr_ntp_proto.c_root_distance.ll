; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_root_distance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_root_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, i32, i32, i32, i32, i32 }

@clock_phi = common dso_local global i32 0, align 4
@current_time = common dso_local global i32 0, align 4
@sys_mindisp = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.peer*)* @root_distance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @root_distance(%struct.peer* %0) #0 {
  %2 = alloca %struct.peer*, align 8
  %3 = alloca double, align 8
  store %struct.peer* %0, %struct.peer** %2, align 8
  %4 = load %struct.peer*, %struct.peer** %2, align 8
  %5 = getelementptr inbounds %struct.peer, %struct.peer* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.peer*, %struct.peer** %2, align 8
  %8 = getelementptr inbounds %struct.peer, %struct.peer* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %6, %9
  %11 = sdiv i32 %10, 2
  %12 = load %struct.peer*, %struct.peer** %2, align 8
  %13 = getelementptr inbounds %struct.peer, %struct.peer* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = load i32, i32* @clock_phi, align 4
  %17 = load i32, i32* @current_time, align 4
  %18 = load %struct.peer*, %struct.peer** %2, align 8
  %19 = getelementptr inbounds %struct.peer, %struct.peer* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = mul nsw i32 %16, %21
  %23 = add nsw i32 %15, %22
  %24 = load %struct.peer*, %struct.peer** %2, align 8
  %25 = getelementptr inbounds %struct.peer, %struct.peer* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load %struct.peer*, %struct.peer** %2, align 8
  %29 = getelementptr inbounds %struct.peer, %struct.peer* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = sitofp i32 %31 to double
  store double %32, double* %3, align 8
  %33 = load double, double* %3, align 8
  %34 = load double, double* @sys_mindisp, align 8
  %35 = fcmp olt double %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load double, double* @sys_mindisp, align 8
  store double %37, double* %3, align 8
  br label %38

38:                                               ; preds = %36, %1
  %39 = load double, double* %3, align 8
  ret double %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
