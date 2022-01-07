; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_gen3_lane_eq_param_to_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_gen3_lane_eq_param_to_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_gen3_lane_eq_params = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_pcie_gen3_lane_eq_params*)* @gen3_lane_eq_param_to_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen3_lane_eq_param_to_val(%struct.al_pcie_gen3_lane_eq_params* %0) #0 {
  %2 = alloca %struct.al_pcie_gen3_lane_eq_params*, align 8
  %3 = alloca i32, align 4
  store %struct.al_pcie_gen3_lane_eq_params* %0, %struct.al_pcie_gen3_lane_eq_params** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.al_pcie_gen3_lane_eq_params*, %struct.al_pcie_gen3_lane_eq_params** %2, align 8
  %5 = getelementptr inbounds %struct.al_pcie_gen3_lane_eq_params, %struct.al_pcie_gen3_lane_eq_params* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 15
  store i32 %7, i32* %3, align 4
  %8 = load %struct.al_pcie_gen3_lane_eq_params*, %struct.al_pcie_gen3_lane_eq_params** %2, align 8
  %9 = getelementptr inbounds %struct.al_pcie_gen3_lane_eq_params, %struct.al_pcie_gen3_lane_eq_params* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 7
  %12 = shl i32 %11, 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.al_pcie_gen3_lane_eq_params*, %struct.al_pcie_gen3_lane_eq_params** %2, align 8
  %16 = getelementptr inbounds %struct.al_pcie_gen3_lane_eq_params, %struct.al_pcie_gen3_lane_eq_params* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 15
  %19 = shl i32 %18, 8
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.al_pcie_gen3_lane_eq_params*, %struct.al_pcie_gen3_lane_eq_params** %2, align 8
  %23 = getelementptr inbounds %struct.al_pcie_gen3_lane_eq_params, %struct.al_pcie_gen3_lane_eq_params* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 7
  %26 = shl i32 %25, 12
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
