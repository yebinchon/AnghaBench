; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_sic.c_versatile_sic_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_sic.c_versatile_sic_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.versatile_sic_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.intr_irqsrc }
%struct.intr_irqsrc = type { i32 }

@SIC_STATUS = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Stray irq %u disabled\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @versatile_sic_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @versatile_sic_filter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.versatile_sic_softc*, align 8
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.versatile_sic_softc*
  store %struct.versatile_sic_softc* %8, %struct.versatile_sic_softc** %3, align 8
  %9 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %3, align 8
  %10 = call i32 @SIC_LOCK(%struct.versatile_sic_softc* %9)
  %11 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %3, align 8
  %12 = load i32, i32* @SIC_STATUS, align 4
  %13 = call i32 @SIC_READ_4(%struct.versatile_sic_softc* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %3, align 8
  %15 = call i32 @SIC_UNLOCK(%struct.versatile_sic_softc* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %55, %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %55

24:                                               ; preds = %19
  %25 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %3, align 8
  %26 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.intr_irqsrc* %31, %struct.intr_irqsrc** %4, align 8
  %32 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @intr_isrc_dispatch(%struct.intr_irqsrc* %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %24
  %39 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %3, align 8
  %40 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %43 = call i32 @versatile_sic_disable_intr(i32 %41, %struct.intr_irqsrc* %42)
  %44 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %3, align 8
  %45 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %48 = call i32 @versatile_sic_post_filter(i32 %46, %struct.intr_irqsrc* %47)
  %49 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %3, align 8
  %50 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %38, %24
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %16

60:                                               ; preds = %16
  %61 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %61
}

declare dso_local i32 @SIC_LOCK(%struct.versatile_sic_softc*) #1

declare dso_local i32 @SIC_READ_4(%struct.versatile_sic_softc*, i32) #1

declare dso_local i32 @SIC_UNLOCK(%struct.versatile_sic_softc*) #1

declare dso_local i64 @intr_isrc_dispatch(%struct.intr_irqsrc*, i32) #1

declare dso_local i32 @versatile_sic_disable_intr(i32, %struct.intr_irqsrc*) #1

declare dso_local i32 @versatile_sic_post_filter(i32, %struct.intr_irqsrc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
