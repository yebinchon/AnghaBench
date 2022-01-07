; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.trapframe* }
%struct.trapframe = type { i32 }
%struct.gicv3_its_softc = type { i64, %struct.gicv3_its_irqsrc* }
%struct.gicv3_its_irqsrc = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"gicv3_its_intr: Invalid interrupt %ld\00", align 1
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @gicv3_its_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gicv3_its_intr(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gicv3_its_softc*, align 8
  %6 = alloca %struct.gicv3_its_irqsrc*, align 8
  %7 = alloca %struct.trapframe*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.gicv3_its_softc*
  store %struct.gicv3_its_softc* %9, %struct.gicv3_its_softc** %5, align 8
  %10 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %11 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = sub i64 %13, %12
  store i64 %14, i64* %4, align 8
  %15 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %16 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %15, i32 0, i32 1
  %17 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %17, i64 %18
  store %struct.gicv3_its_irqsrc* %19, %struct.gicv3_its_irqsrc** %6, align 8
  %20 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %6, align 8
  %21 = icmp eq %struct.gicv3_its_irqsrc* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %25 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %23, %26
  %28 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.trapframe*, %struct.trapframe** %31, align 8
  store %struct.trapframe* %32, %struct.trapframe** %7, align 8
  %33 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %6, align 8
  %34 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %33, i32 0, i32 0
  %35 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %36 = call i32 @intr_isrc_dispatch(i32* %34, %struct.trapframe* %35)
  %37 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %37
}

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @intr_isrc_dispatch(i32*, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
