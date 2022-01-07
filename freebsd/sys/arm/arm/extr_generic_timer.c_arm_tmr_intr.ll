; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_generic_timer.c_arm_tmr_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_generic_timer.c_arm_tmr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_tmr_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }

@GT_CTRL_INT_STAT = common dso_local global i32 0, align 4
@GT_CTRL_INT_MASK = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @arm_tmr_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_tmr_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.arm_tmr_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.arm_tmr_softc*
  store %struct.arm_tmr_softc* %6, %struct.arm_tmr_softc** %3, align 8
  %7 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %8 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @get_ctrl(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GT_CTRL_INT_STAT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @GT_CTRL_INT_MASK, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %21 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @set_ctrl(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %26 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %32 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %33, align 8
  %35 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %36 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %35, i32 0, i32 0
  %37 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %38 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %34(%struct.TYPE_2__* %36, i32 %40)
  br label %42

42:                                               ; preds = %30, %24
  %43 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %43
}

declare dso_local i32 @get_ctrl(i32) #1

declare dso_local i32 @set_ctrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
