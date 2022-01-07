; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_alloc_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_alloc_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.gicv3_its_softc = type { %struct.gicv3_its_irqsrc* }
%struct.gicv3_its_irqsrc = type { %struct.its_dev* }
%struct.its_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"gicv3_its_alloc_msix: No free LPIs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, %struct.intr_irqsrc**)* @gicv3_its_alloc_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gicv3_its_alloc_msix(i32 %0, i32 %1, i32* %2, %struct.intr_irqsrc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.intr_irqsrc**, align 8
  %10 = alloca %struct.gicv3_its_softc*, align 8
  %11 = alloca %struct.gicv3_its_irqsrc*, align 8
  %12 = alloca %struct.its_dev*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.intr_irqsrc** %3, %struct.intr_irqsrc*** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @pci_msix_count(i32 %15)
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i64, i64* %13, align 8
  %20 = call %struct.its_dev* @its_device_get(i32 %17, i32 %18, i64 %19)
  store %struct.its_dev* %20, %struct.its_dev** %12, align 8
  %21 = load %struct.its_dev*, %struct.its_dev** %12, align 8
  %22 = icmp eq %struct.its_dev* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %5, align 4
  br label %72

25:                                               ; preds = %4
  %26 = load %struct.its_dev*, %struct.its_dev** %12, align 8
  %27 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.gicv3_its_softc* @device_get_softc(i32 %33)
  store %struct.gicv3_its_softc* %34, %struct.gicv3_its_softc** %10, align 8
  %35 = load %struct.its_dev*, %struct.its_dev** %12, align 8
  %36 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.its_dev*, %struct.its_dev** %12, align 8
  %40 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %38, %42
  %44 = load %struct.its_dev*, %struct.its_dev** %12, align 8
  %45 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %43, %47
  store i64 %48, i64* %14, align 8
  %49 = load %struct.its_dev*, %struct.its_dev** %12, align 8
  %50 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.its_dev*, %struct.its_dev** %12, align 8
  %55 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %10, align 8
  %60 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %59, i32 0, i32 0
  %61 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %60, align 8
  %62 = load i64, i64* %14, align 8
  %63 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %61, i64 %62
  store %struct.gicv3_its_irqsrc* %63, %struct.gicv3_its_irqsrc** %11, align 8
  %64 = load %struct.its_dev*, %struct.its_dev** %12, align 8
  %65 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %11, align 8
  %66 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %65, i32 0, i32 0
  store %struct.its_dev* %64, %struct.its_dev** %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %11, align 8
  %70 = bitcast %struct.gicv3_its_irqsrc* %69 to %struct.intr_irqsrc*
  %71 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %9, align 8
  store %struct.intr_irqsrc* %70, %struct.intr_irqsrc** %71, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %25, %23
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @pci_msix_count(i32) #1

declare dso_local %struct.its_dev* @its_device_get(i32, i32, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.gicv3_its_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
