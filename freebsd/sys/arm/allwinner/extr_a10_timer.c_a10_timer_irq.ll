; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_timer.c_a10_timer_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_timer.c_a10_timer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10_timer_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }

@TIMER_IRQ_STA_REG = common dso_local global i32 0, align 4
@TIMER_CTRL_AUTORELOAD = common dso_local global i32 0, align 4
@TIMER_CTRL_START = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @a10_timer_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10_timer_irq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.a10_timer_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.a10_timer_softc*
  store %struct.a10_timer_softc* %6, %struct.a10_timer_softc** %3, align 8
  %7 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %3, align 8
  %8 = load i32, i32* @TIMER_IRQ_STA_REG, align 4
  %9 = call i32 @TIMER_IRQ_PENDING(i32 0)
  %10 = call i32 @timer_write_4(%struct.a10_timer_softc* %7, i32 %8, i32 %9)
  %11 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %3, align 8
  %12 = call i32 @TIMER_CTRL_REG(i32 0)
  %13 = call i32 @timer_read_4(%struct.a10_timer_softc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %3, align 8
  %19 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %3, align 8
  %24 = call i32 @TIMER_CURV_REG(i32 0)
  %25 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %3, align 8
  %26 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @timer_write_4(%struct.a10_timer_softc* %23, i32 %24, i32 %28)
  %30 = load i32, i32* @TIMER_CTRL_AUTORELOAD, align 4
  %31 = load i32, i32* @TIMER_CTRL_START, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %3, align 8
  %36 = call i32 @TIMER_CTRL_REG(i32 0)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @timer_write_4(%struct.a10_timer_softc* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %22, %17, %1
  %40 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %3, align 8
  %41 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %3, align 8
  %47 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %48, align 8
  %50 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %3, align 8
  %51 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %50, i32 0, i32 1
  %52 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %3, align 8
  %53 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %49(%struct.TYPE_2__* %51, i32 %55)
  br label %57

57:                                               ; preds = %45, %39
  %58 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %58
}

declare dso_local i32 @timer_write_4(%struct.a10_timer_softc*, i32, i32) #1

declare dso_local i32 @TIMER_IRQ_PENDING(i32) #1

declare dso_local i32 @timer_read_4(%struct.a10_timer_softc*, i32) #1

declare dso_local i32 @TIMER_CTRL_REG(i32) #1

declare dso_local i32 @TIMER_CURV_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
