; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_sei.c_mv_ap806_sei_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_sei.c_mv_ap806_sei_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.trapframe* }
%struct.trapframe = type { i32 }
%struct.mv_ap806_sei_softc = type { i32, %struct.mv_ap806_sei_irqsrc* }
%struct.mv_ap806_sei_irqsrc = type { i32 }

@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@GICP_SECR1 = common dso_local global i32 0, align 4
@GICP_SECR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Stray irq %u disabled\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mv_ap806_sei_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_ap806_sei_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mv_ap806_sei_softc*, align 8
  %4 = alloca %struct.mv_ap806_sei_irqsrc*, align 8
  %5 = alloca %struct.trapframe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mv_ap806_sei_softc*
  store %struct.mv_ap806_sei_softc* %9, %struct.mv_ap806_sei_softc** %3, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  store %struct.trapframe* %12, %struct.trapframe** %5, align 8
  br label %13

13:                                               ; preds = %1, %54
  %14 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %3, align 8
  %15 = load i32, i32* @GICP_SECR1, align 4
  %16 = call i32 @RD4(%struct.mv_ap806_sei_softc* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %3, align 8
  %20 = load i32, i32* @GICP_SECR0, align 4
  %21 = call i32 @RD4(%struct.mv_ap806_sei_softc* %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @ffsll(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  br label %55

29:                                               ; preds = %13
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %7, align 8
  %32 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %32, i32 0, i32 1
  %34 = load %struct.mv_ap806_sei_irqsrc*, %struct.mv_ap806_sei_irqsrc** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.mv_ap806_sei_irqsrc, %struct.mv_ap806_sei_irqsrc* %34, i64 %35
  store %struct.mv_ap806_sei_irqsrc* %36, %struct.mv_ap806_sei_irqsrc** %4, align 8
  %37 = load %struct.mv_ap806_sei_irqsrc*, %struct.mv_ap806_sei_irqsrc** %4, align 8
  %38 = getelementptr inbounds %struct.mv_ap806_sei_irqsrc, %struct.mv_ap806_sei_irqsrc* %37, i32 0, i32 0
  %39 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %40 = call i64 @intr_isrc_dispatch(i32* %38, %struct.trapframe* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %29
  %43 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %3, align 8
  %44 = load %struct.mv_ap806_sei_irqsrc*, %struct.mv_ap806_sei_irqsrc** %4, align 8
  %45 = call i32 @mv_ap806_sei_isrc_mask(%struct.mv_ap806_sei_softc* %43, %struct.mv_ap806_sei_irqsrc* %44, i32 0)
  %46 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %3, align 8
  %47 = load %struct.mv_ap806_sei_irqsrc*, %struct.mv_ap806_sei_irqsrc** %4, align 8
  %48 = call i32 @mv_ap806_sei_isrc_eoi(%struct.mv_ap806_sei_softc* %46, %struct.mv_ap806_sei_irqsrc* %47)
  %49 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %3, align 8
  %50 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %42, %29
  br label %13

55:                                               ; preds = %28
  %56 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %56
}

declare dso_local i32 @RD4(%struct.mv_ap806_sei_softc*, i32) #1

declare dso_local i64 @ffsll(i32) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, %struct.trapframe*) #1

declare dso_local i32 @mv_ap806_sei_isrc_mask(%struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_irqsrc*, i32) #1

declare dso_local i32 @mv_ap806_sei_isrc_eoi(%struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_irqsrc*) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
