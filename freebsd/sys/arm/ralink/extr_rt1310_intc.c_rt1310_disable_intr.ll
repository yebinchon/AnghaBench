; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_intc.c_rt1310_disable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_intc.c_rt1310_disable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1310_intc_softc = type { i32 }
%struct.intr_irqsrc = type { i32 }
%struct.rt1310_irqsrc = type { i32 }

@intc_softc = common dso_local global %struct.rt1310_intc_softc* null, align 8
@RT_INTC_IECR = common dso_local global i32 0, align 4
@RT_INTC_IMR = common dso_local global i32 0, align 4
@RT_INTC_ICCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.intr_irqsrc*)* @rt1310_disable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt1310_disable_intr(i32 %0, %struct.intr_irqsrc* %1) #0 {
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
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %7, align 8
  %22 = load i32, i32* @RT_INTC_IECR, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @intc_write_4(%struct.rt1310_intc_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %7, align 8
  %26 = load i32, i32* @RT_INTC_IMR, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @intc_write_4(%struct.rt1310_intc_softc* %25, i32 %26, i32 %27)
  %29 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %7, align 8
  %30 = load i32, i32* @RT_INTC_ICCR, align 4
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = call i32 @intc_write_4(%struct.rt1310_intc_softc* %29, i32 %30, i32 %32)
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
