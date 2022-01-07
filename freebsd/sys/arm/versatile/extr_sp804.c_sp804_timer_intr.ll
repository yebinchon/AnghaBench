; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_sp804.c_sp804_timer_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_sp804.c_sp804_timer_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp804_timer_softc = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }

@sp804_timer_intr.prev = internal global i32 0, align 4
@SP804_TIMER1_VALUE = common dso_local global i32 0, align 4
@SP804_TIMER2_INTCLR = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sp804_timer_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp804_timer_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sp804_timer_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sp804_timer_softc*
  store %struct.sp804_timer_softc* %6, %struct.sp804_timer_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @SP804_TIMER1_VALUE, align 4
  %8 = call i32 @sp804_timer_tc_read_4(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* @sp804_timer_intr.prev, align 4
  %10 = load i32, i32* @SP804_TIMER2_INTCLR, align 4
  %11 = call i32 @sp804_timer_tc_write_4(i32 %10, i32 1)
  %12 = load %struct.sp804_timer_softc*, %struct.sp804_timer_softc** %3, align 8
  %13 = getelementptr inbounds %struct.sp804_timer_softc, %struct.sp804_timer_softc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load %struct.sp804_timer_softc*, %struct.sp804_timer_softc** %3, align 8
  %18 = getelementptr inbounds %struct.sp804_timer_softc, %struct.sp804_timer_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.sp804_timer_softc*, %struct.sp804_timer_softc** %3, align 8
  %24 = getelementptr inbounds %struct.sp804_timer_softc, %struct.sp804_timer_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %25, align 8
  %27 = load %struct.sp804_timer_softc*, %struct.sp804_timer_softc** %3, align 8
  %28 = getelementptr inbounds %struct.sp804_timer_softc, %struct.sp804_timer_softc* %27, i32 0, i32 0
  %29 = load %struct.sp804_timer_softc*, %struct.sp804_timer_softc** %3, align 8
  %30 = getelementptr inbounds %struct.sp804_timer_softc, %struct.sp804_timer_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %26(%struct.TYPE_2__* %28, i32 %32)
  br label %34

34:                                               ; preds = %22, %16
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @sp804_timer_tc_read_4(i32) #1

declare dso_local i32 @sp804_timer_tc_write_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
