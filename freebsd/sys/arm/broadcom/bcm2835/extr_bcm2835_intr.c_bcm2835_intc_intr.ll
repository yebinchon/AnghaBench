; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_intr.c_bcm2835_intc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_intr.c_bcm2835_intc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.bcm_intc_softc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@curthread = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Stray irq %u disabled\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Spurious interrupt detected\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bcm2835_intc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_intc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_intc_softc*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.bcm_intc_softc*
  store %struct.bcm_intc_softc* %7, %struct.bcm_intc_softc** %5, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %43, %1
  %9 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %5, align 8
  %10 = call i32 @bcm2835_intc_active_intr(%struct.bcm_intc_softc* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %46

14:                                               ; preds = %8
  %15 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %5, align 8
  %16 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @intr_isrc_dispatch(i32* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %14
  %28 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %5, align 8
  %29 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %5, align 8
  %30 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = call i32 @bcm_intc_isrc_mask(%struct.bcm_intc_softc* %28, %struct.TYPE_4__* %34)
  %36 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %5, align 8
  %37 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %27, %14
  %42 = call i32 @arm_irq_memory_barrier(i32 0)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %8

46:                                               ; preds = %13
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i64, i64* @bootverbose, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %5, align 8
  %54 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %49, %46
  %58 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %58
}

declare dso_local i32 @bcm2835_intc_active_intr(%struct.bcm_intc_softc*) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, i32) #1

declare dso_local i32 @bcm_intc_isrc_mask(%struct.bcm_intc_softc*, %struct.TYPE_4__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @arm_irq_memory_barrier(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
