; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qm_mc_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qm_mc_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_mc_result = type { i32 }
%struct.qm_portal = type { %struct.qm_mc }
%struct.qm_mc = type { i32, i64, i32, %struct.qm_mc_result* }

@QM_MCC_VERB_VBIT = common dso_local global i32 0, align 4
@mc_hw = common dso_local global i64 0, align 8
@mc_idle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qm_mc_result* (%struct.qm_portal*)* @qm_mc_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qm_mc_result* @qm_mc_result(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_mc_result*, align 8
  %3 = alloca %struct.qm_portal*, align 8
  %4 = alloca %struct.qm_mc*, align 8
  %5 = alloca %struct.qm_mc_result*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %3, align 8
  %6 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %7 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %6, i32 0, i32 0
  store %struct.qm_mc* %7, %struct.qm_mc** %4, align 8
  %8 = load %struct.qm_mc*, %struct.qm_mc** %4, align 8
  %9 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %8, i32 0, i32 3
  %10 = load %struct.qm_mc_result*, %struct.qm_mc_result** %9, align 8
  %11 = load %struct.qm_mc*, %struct.qm_mc** %4, align 8
  %12 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %10, i64 %14
  store %struct.qm_mc_result* %15, %struct.qm_mc_result** %5, align 8
  %16 = load %struct.qm_mc_result*, %struct.qm_mc_result** %5, align 8
  %17 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.qm_mc_result*, %struct.qm_mc_result** %5, align 8
  %22 = call i32 @dcbit_ro(%struct.qm_mc_result* %21)
  store %struct.qm_mc_result* null, %struct.qm_mc_result** %2, align 8
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.qm_mc*, %struct.qm_mc** %4, align 8
  %25 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = xor i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @QM_MCC_VERB_VBIT, align 4
  %29 = load %struct.qm_mc*, %struct.qm_mc** %4, align 8
  %30 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.qm_mc_result*, %struct.qm_mc_result** %5, align 8
  store %struct.qm_mc_result* %33, %struct.qm_mc_result** %2, align 8
  br label %34

34:                                               ; preds = %23, %20
  %35 = load %struct.qm_mc_result*, %struct.qm_mc_result** %2, align 8
  ret %struct.qm_mc_result* %35
}

declare dso_local i32 @dcbit_ro(%struct.qm_mc_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
