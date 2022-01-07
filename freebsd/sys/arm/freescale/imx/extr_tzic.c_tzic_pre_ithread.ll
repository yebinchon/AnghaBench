; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_tzic.c_tzic_pre_ithread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_tzic.c_tzic_pre_ithread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.tzic_softc = type { i32 }
%struct.tzic_irqsrc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.intr_irqsrc*)* @tzic_pre_ithread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tzic_pre_ithread(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca %struct.tzic_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.tzic_softc* @device_get_softc(i32 %6)
  store %struct.tzic_softc* %7, %struct.tzic_softc** %5, align 8
  %8 = load %struct.tzic_softc*, %struct.tzic_softc** %5, align 8
  %9 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %10 = bitcast %struct.intr_irqsrc* %9 to %struct.tzic_irqsrc*
  %11 = getelementptr inbounds %struct.tzic_irqsrc, %struct.tzic_irqsrc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @tzic_irq_mask(%struct.tzic_softc* %8, i32 %12)
  %14 = load %struct.tzic_softc*, %struct.tzic_softc** %5, align 8
  %15 = call i32 @tzic_irq_eoi(%struct.tzic_softc* %14)
  ret void
}

declare dso_local %struct.tzic_softc* @device_get_softc(i32) #1

declare dso_local i32 @tzic_irq_mask(%struct.tzic_softc*, i32) #1

declare dso_local i32 @tzic_irq_eoi(%struct.tzic_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
