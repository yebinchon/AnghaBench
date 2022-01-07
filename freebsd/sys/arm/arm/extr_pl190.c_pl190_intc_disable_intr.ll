; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl190.c_pl190_intc_disable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl190.c_pl190_intc_disable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.pl190_intc_softc = type { i32 }
%struct.pl190_intc_irqsrc = type { i32 }

@VICINTENCLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.intr_irqsrc*)* @pl190_intc_disable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl190_intc_disable_intr(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca %struct.pl190_intc_softc*, align 8
  %6 = alloca %struct.pl190_intc_irqsrc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.pl190_intc_softc* @device_get_softc(i32 %7)
  store %struct.pl190_intc_softc* %8, %struct.pl190_intc_softc** %5, align 8
  %9 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %10 = bitcast %struct.intr_irqsrc* %9 to %struct.pl190_intc_irqsrc*
  store %struct.pl190_intc_irqsrc* %10, %struct.pl190_intc_irqsrc** %6, align 8
  %11 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %5, align 8
  %12 = call i32 @VIC_LOCK(%struct.pl190_intc_softc* %11)
  %13 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %5, align 8
  %14 = load i32, i32* @VICINTENCLEAR, align 4
  %15 = load %struct.pl190_intc_irqsrc*, %struct.pl190_intc_irqsrc** %6, align 8
  %16 = getelementptr inbounds %struct.pl190_intc_irqsrc, %struct.pl190_intc_irqsrc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = call i32 @INTC_VIC_WRITE_4(%struct.pl190_intc_softc* %13, i32 %14, i32 %18)
  %20 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %5, align 8
  %21 = call i32 @VIC_UNLOCK(%struct.pl190_intc_softc* %20)
  ret void
}

declare dso_local %struct.pl190_intc_softc* @device_get_softc(i32) #1

declare dso_local i32 @VIC_LOCK(%struct.pl190_intc_softc*) #1

declare dso_local i32 @INTC_VIC_WRITE_4(%struct.pl190_intc_softc*, i32, i32) #1

declare dso_local i32 @VIC_UNLOCK(%struct.pl190_intc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
