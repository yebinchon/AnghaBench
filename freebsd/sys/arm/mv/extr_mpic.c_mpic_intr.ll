; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mpic.c_mpic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mpic.c_mpic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mv_mpic_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MPIC_PPI_CAUSE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Stray irq %u disabled\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mpic_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpic_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mv_mpic_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mv_mpic_softc*
  store %struct.mv_mpic_softc* %9, %struct.mv_mpic_softc** %3, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @PCPU_GET(i32 %10)
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %3, align 8
  %13 = load i32, i32* @MPIC_PPI_CAUSE, align 4
  %14 = call i32 @MPIC_CPU_READ(%struct.mv_mpic_softc* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %56, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @MPIC_INT_CTL(i32 %24)
  %26 = call i32 @MPIC_READ(%struct.mv_mpic_softc* %23, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @MPIC_INT_IRQ_FIQ_MASK(i32 %28)
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %56

33:                                               ; preds = %22
  %34 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @intr_isrc_dispatch(i32* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @mpic_mask_irq(i32 %47)
  %49 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %3, align 8
  %50 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %46, %33
  br label %55

55:                                               ; preds = %54, %18
  br label %56

56:                                               ; preds = %55, %32
  %57 = load i32, i32* %4, align 4
  %58 = ashr i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %15

61:                                               ; preds = %15
  %62 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %62
}

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @MPIC_CPU_READ(%struct.mv_mpic_softc*, i32) #1

declare dso_local i32 @MPIC_READ(%struct.mv_mpic_softc*, i32) #1

declare dso_local i32 @MPIC_INT_CTL(i32) #1

declare dso_local i32 @MPIC_INT_IRQ_FIQ_MASK(i32) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, i32) #1

declare dso_local i32 @mpic_mask_irq(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
