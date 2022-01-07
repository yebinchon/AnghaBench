; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i64, i32, i32 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i32 }
%struct.bcm_lintc_softc = type { i32 }

@INTR_ISRCF_PPI = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @bcm_lintc_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_lintc_setup_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_irqsrc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.intr_map_data*, align 8
  %9 = alloca %struct.bcm_lintc_softc*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %8, align 8
  %10 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %6, align 8
  %11 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  %15 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %6, align 8
  %16 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @INTR_ISRCF_PPI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.bcm_lintc_softc* @device_get_softc(i32 %22)
  store %struct.bcm_lintc_softc* %23, %struct.bcm_lintc_softc** %9, align 8
  %24 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %9, align 8
  %25 = call i32 @BCM_LINTC_LOCK(%struct.bcm_lintc_softc* %24)
  %26 = load i32, i32* @cpuid, align 4
  %27 = call i32 @PCPU_GET(i32 %26)
  %28 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %6, align 8
  %29 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %28, i32 0, i32 2
  %30 = call i32 @CPU_SET(i32 %27, i32* %29)
  %31 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %9, align 8
  %32 = call i32 @BCM_LINTC_UNLOCK(%struct.bcm_lintc_softc* %31)
  br label %33

33:                                               ; preds = %21, %14, %4
  ret i32 0
}

declare dso_local %struct.bcm_lintc_softc* @device_get_softc(i32) #1

declare dso_local i32 @BCM_LINTC_LOCK(%struct.bcm_lintc_softc*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @BCM_LINTC_UNLOCK(%struct.bcm_lintc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
