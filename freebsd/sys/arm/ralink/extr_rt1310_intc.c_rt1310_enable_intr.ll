; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_intc.c_rt1310_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_intc.c_rt1310_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1310_intc_softc = type { i32 }
%struct.intr_irqsrc = type { i32 }
%struct.rt1310_irqsrc = type { i32 }

@intc_softc = common dso_local global %struct.rt1310_intc_softc* null, align 8
@RT_INTC_IECR = common dso_local global i32 0, align 4
@RT_INTC_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.intr_irqsrc*)* @rt1310_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt1310_enable_intr(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt1310_intc_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %4, align 8
  %8 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** @intc_softc, align 8
  store %struct.rt1310_intc_softc* %8, %struct.rt1310_intc_softc** %7, align 8
  %9 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %10 = bitcast %struct.intr_irqsrc* %9 to %struct.rt1310_irqsrc*
  %11 = getelementptr inbounds %struct.rt1310_irqsrc, %struct.rt1310_irqsrc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %7, align 8
  %14 = load i32, i32* @RT_INTC_IECR, align 4
  %15 = call i32 @intc_read_4(%struct.rt1310_intc_softc* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %7, align 8
  %21 = load i32, i32* @RT_INTC_IMR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @intc_write_4(%struct.rt1310_intc_softc* %20, i32 %21, i32 %22)
  %24 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %7, align 8
  %25 = load i32, i32* @RT_INTC_IECR, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @intc_write_4(%struct.rt1310_intc_softc* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @intc_read_4(%struct.rt1310_intc_softc*, i32) #1

declare dso_local i32 @intc_write_4(%struct.rt1310_intc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
