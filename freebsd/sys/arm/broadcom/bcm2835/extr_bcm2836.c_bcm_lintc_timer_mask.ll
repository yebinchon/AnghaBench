; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_timer_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_timer_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_lintc_softc = type { i32 }
%struct.bcm_lintc_irqsrc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_lintc_softc*, %struct.bcm_lintc_irqsrc*)* @bcm_lintc_timer_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_lintc_timer_mask(%struct.bcm_lintc_softc* %0, %struct.bcm_lintc_irqsrc* %1) #0 {
  %3 = alloca %struct.bcm_lintc_softc*, align 8
  %4 = alloca %struct.bcm_lintc_irqsrc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm_lintc_softc* %0, %struct.bcm_lintc_softc** %3, align 8
  store %struct.bcm_lintc_irqsrc* %1, %struct.bcm_lintc_irqsrc** %4, align 8
  %7 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %8 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32* %9, i32** %5, align 8
  %10 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %11 = call i32 @BCM_LINTC_LOCK(%struct.bcm_lintc_softc* %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %29, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @CPU_ISSET(i32 %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @BCM_LINTC_TIMER_CFG_REG(i32 %22)
  %24 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %25 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bcm_lintc_rwreg_clr(%struct.bcm_lintc_softc* %21, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %20, %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %34 = call i32 @BCM_LINTC_UNLOCK(%struct.bcm_lintc_softc* %33)
  ret void
}

declare dso_local i32 @BCM_LINTC_LOCK(%struct.bcm_lintc_softc*) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @bcm_lintc_rwreg_clr(%struct.bcm_lintc_softc*, i32, i32) #1

declare dso_local i32 @BCM_LINTC_TIMER_CFG_REG(i32) #1

declare dso_local i32 @BCM_LINTC_UNLOCK(%struct.bcm_lintc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
