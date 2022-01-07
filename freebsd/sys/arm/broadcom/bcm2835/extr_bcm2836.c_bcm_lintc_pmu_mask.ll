; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_pmu_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_pmu_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_lintc_softc = type { i32 }
%struct.bcm_lintc_irqsrc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BCM_LINTC_PMU_ROUTING_CLR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_lintc_softc*, %struct.bcm_lintc_irqsrc*)* @bcm_lintc_pmu_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_lintc_pmu_mask(%struct.bcm_lintc_softc* %0, %struct.bcm_lintc_irqsrc* %1) #0 {
  %3 = alloca %struct.bcm_lintc_softc*, align 8
  %4 = alloca %struct.bcm_lintc_irqsrc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm_lintc_softc* %0, %struct.bcm_lintc_softc** %3, align 8
  store %struct.bcm_lintc_irqsrc* %1, %struct.bcm_lintc_irqsrc** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %9 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32* %10, i32** %5, align 8
  %11 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %12 = call i32 @BCM_LINTC_LOCK(%struct.bcm_lintc_softc* %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %27, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @CPU_ISSET(i32 %17, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @BCM_LINTC_PIRR_IRQ_EN_CORE(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %16
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %32 = load i32, i32* @BCM_LINTC_PMU_ROUTING_CLR_REG, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @bcm_lintc_write_4(%struct.bcm_lintc_softc* %31, i32 %32, i32 %33)
  %35 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %36 = call i32 @BCM_LINTC_UNLOCK(%struct.bcm_lintc_softc* %35)
  ret void
}

declare dso_local i32 @BCM_LINTC_LOCK(%struct.bcm_lintc_softc*) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @BCM_LINTC_PIRR_IRQ_EN_CORE(i32) #1

declare dso_local i32 @bcm_lintc_write_4(%struct.bcm_lintc_softc*, i32, i32) #1

declare dso_local i32 @BCM_LINTC_UNLOCK(%struct.bcm_lintc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
