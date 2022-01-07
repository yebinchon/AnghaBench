; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_cpu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gic_v3_softc = type { i32 }

@GIC_PRIORITY_MIN = common dso_local global i32 0, align 4
@CTLR = common dso_local global i32 0, align 4
@ICC_CTLR_EL1_EOIMODE = common dso_local global i32 0, align 4
@IGRPEN1 = common dso_local global i32 0, align 4
@ICC_IGRPEN0_EL1_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gic_v3_softc*)* @gic_v3_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_v3_cpu_init(%struct.gic_v3_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gic_v3_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.gic_v3_softc* %0, %struct.gic_v3_softc** %3, align 8
  %5 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %6 = call i32 @gic_v3_cpu_enable_sre(%struct.gic_v3_softc* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load i32, i32* @GIC_PRIORITY_MIN, align 4
  %13 = call i32 @gic_v3_cpu_priority(i32 %12)
  %14 = load i32, i32* @CTLR, align 4
  %15 = load i32, i32* @ICC_CTLR_EL1_EOIMODE, align 4
  %16 = call i32 @gic_icc_clear(i32 %14, i32 %15)
  %17 = load i32, i32* @IGRPEN1, align 4
  %18 = load i32, i32* @ICC_IGRPEN0_EL1_EN, align 4
  %19 = call i32 @gic_icc_set(i32 %17, i32 %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %11, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @gic_v3_cpu_enable_sre(%struct.gic_v3_softc*) #1

declare dso_local i32 @gic_v3_cpu_priority(i32) #1

declare dso_local i32 @gic_icc_clear(i32, i32) #1

declare dso_local i32 @gic_icc_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
