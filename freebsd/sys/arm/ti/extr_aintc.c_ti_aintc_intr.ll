; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_aintc.c_ti_aintc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_aintc.c_ti_aintc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ti_aintc_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@INTC_SIR_IRQ = common dso_local global i32 0, align 4
@INTC_SIR_SPURIOUS_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Spurious interrupt detected (0x%08x)\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@INTC_SIR_ACTIVE_MASK = common dso_local global i64 0, align 8
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Stray irq %u disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ti_aintc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_aintc_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ti_aintc_softc*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ti_aintc_softc*
  store %struct.ti_aintc_softc* %7, %struct.ti_aintc_softc** %5, align 8
  %8 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %5, align 8
  %9 = load i32, i32* @INTC_SIR_IRQ, align 4
  %10 = call i64 @aintc_read_4(%struct.ti_aintc_softc* %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @INTC_SIR_SPURIOUS_MASK, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %5, align 8
  %22 = call i32 @ti_aintc_irq_eoi(%struct.ti_aintc_softc* %21)
  %23 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %1
  %25 = load i64, i64* @INTC_SIR_ACTIVE_MASK, align 8
  %26 = load i64, i64* %4, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %4, align 8
  %28 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %5, align 8
  %29 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @intr_isrc_dispatch(i32* %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %24
  %40 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %5, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @ti_aintc_irq_mask(%struct.ti_aintc_softc* %40, i64 %41)
  %43 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %5, align 8
  %44 = call i32 @ti_aintc_irq_eoi(%struct.ti_aintc_softc* %43)
  %45 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %39, %24
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @arm_irq_memory_barrier(i64 %51)
  %53 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @aintc_read_4(%struct.ti_aintc_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @ti_aintc_irq_eoi(%struct.ti_aintc_softc*) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, i32) #1

declare dso_local i32 @ti_aintc_irq_mask(%struct.ti_aintc_softc*, i64) #1

declare dso_local i32 @arm_irq_memory_barrier(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
