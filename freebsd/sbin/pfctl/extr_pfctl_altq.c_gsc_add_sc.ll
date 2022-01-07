; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_gsc_add_sc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_gsc_add_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_sc = type { i32 }
%struct.service_curve = type { i64, i64, i64 }

@INFINITY = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gen_sc*, %struct.service_curve*)* @gsc_add_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_add_sc(%struct.gen_sc* %0, %struct.service_curve* %1) #0 {
  %3 = alloca %struct.gen_sc*, align 8
  %4 = alloca %struct.service_curve*, align 8
  store %struct.gen_sc* %0, %struct.gen_sc** %3, align 8
  store %struct.service_curve* %1, %struct.service_curve** %4, align 8
  %5 = load %struct.service_curve*, %struct.service_curve** %4, align 8
  %6 = call i64 @is_sc_null(%struct.service_curve* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %37

9:                                                ; preds = %2
  %10 = load %struct.service_curve*, %struct.service_curve** %4, align 8
  %11 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load %struct.gen_sc*, %struct.gen_sc** %3, align 8
  %16 = load %struct.service_curve*, %struct.service_curve** %4, align 8
  %17 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sitofp i64 %18 to double
  %20 = load %struct.service_curve*, %struct.service_curve** %4, align 8
  %21 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = sitofp i64 %22 to double
  %24 = call i32 @gsc_add_seg(%struct.gen_sc* %15, double 0.000000e+00, double 0.000000e+00, double %19, double %23)
  br label %25

25:                                               ; preds = %14, %9
  %26 = load %struct.gen_sc*, %struct.gen_sc** %3, align 8
  %27 = load %struct.service_curve*, %struct.service_curve** %4, align 8
  %28 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to double
  %31 = load double, double* @INFINITY, align 8
  %32 = load %struct.service_curve*, %struct.service_curve** %4, align 8
  %33 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sitofp i64 %34 to double
  %36 = call i32 @gsc_add_seg(%struct.gen_sc* %26, double %30, double 0.000000e+00, double %31, double %35)
  br label %37

37:                                               ; preds = %25, %8
  ret void
}

declare dso_local i64 @is_sc_null(%struct.service_curve*) #1

declare dso_local i32 @gsc_add_seg(%struct.gen_sc*, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
