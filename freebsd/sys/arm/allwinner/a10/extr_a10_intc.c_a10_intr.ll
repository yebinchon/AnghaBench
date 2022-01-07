; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/a10/extr_a10_intc.c_a10_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/a10/extr_a10_intc.c_a10_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.a10_aintc_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@A10_INTR_MAX_NIRQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Spurious interrupt %d\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Stray interrupt %d disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @a10_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.a10_aintc_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.a10_aintc_softc*
  store %struct.a10_aintc_softc* %7, %struct.a10_aintc_softc** %4, align 8
  %8 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %9 = call i32 @a10_pending_irq(%struct.a10_aintc_softc* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @A10_INTR_MAX_NIRQS, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %1
  %17 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %18 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %22, i32* %2, align 4
  br label %70

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %63, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %68

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @A10_INTR_MAX_NIRQS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %33 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %37, i32* %2, align 4
  br label %70

38:                                               ; preds = %27
  %39 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %40 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @intr_isrc_dispatch(i32* %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %38
  %52 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @a10_intr_mask(%struct.a10_aintc_softc* %52, i32 %53)
  %55 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @a10_intr_eoi(%struct.a10_aintc_softc* %55, i32 %56)
  %58 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %59 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %51, %38
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @arm_irq_memory_barrier(i32 %64)
  %66 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %67 = call i32 @a10_pending_irq(%struct.a10_aintc_softc* %66)
  store i32 %67, i32* %5, align 4
  br label %24

68:                                               ; preds = %24
  %69 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %31, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @a10_pending_irq(%struct.a10_aintc_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, i32) #1

declare dso_local i32 @a10_intr_mask(%struct.a10_aintc_softc*, i32) #1

declare dso_local i32 @a10_intr_eoi(%struct.a10_aintc_softc*, i32) #1

declare dso_local i32 @arm_irq_memory_barrier(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
