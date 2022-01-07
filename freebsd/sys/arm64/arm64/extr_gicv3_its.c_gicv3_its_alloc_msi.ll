; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_alloc_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_alloc_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.gicv3_its_softc = type { %struct.gicv3_its_irqsrc* }
%struct.gicv3_its_irqsrc = type { %struct.its_dev* }
%struct.its_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"gicv3_its_alloc_msi: No free LPIs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, %struct.intr_irqsrc**)* @gicv3_its_alloc_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gicv3_its_alloc_msi(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.intr_irqsrc** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.intr_irqsrc**, align 8
  %14 = alloca %struct.gicv3_its_softc*, align 8
  %15 = alloca %struct.gicv3_its_irqsrc*, align 8
  %16 = alloca %struct.its_dev*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.intr_irqsrc** %5, %struct.intr_irqsrc*** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.its_dev* @its_device_get(i32 %19, i32 %20, i32 %21)
  store %struct.its_dev* %22, %struct.its_dev** %16, align 8
  %23 = load %struct.its_dev*, %struct.its_dev** %16, align 8
  %24 = icmp eq %struct.its_dev* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %7, align 4
  br label %91

27:                                               ; preds = %6
  %28 = load %struct.its_dev*, %struct.its_dev** %16, align 8
  %29 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp sge i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.gicv3_its_softc* @device_get_softc(i32 %36)
  store %struct.gicv3_its_softc* %37, %struct.gicv3_its_softc** %14, align 8
  %38 = load %struct.its_dev*, %struct.its_dev** %16, align 8
  %39 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.its_dev*, %struct.its_dev** %16, align 8
  %43 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %41, %45
  %47 = load %struct.its_dev*, %struct.its_dev** %16, align 8
  %48 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = sub i64 %46, %51
  store i64 %52, i64* %17, align 8
  store i32 0, i32* %18, align 4
  br label %53

53:                                               ; preds = %77, %27
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load %struct.its_dev*, %struct.its_dev** %16, align 8
  %59 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %14, align 8
  %64 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %63, i32 0, i32 0
  %65 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %64, align 8
  %66 = load i64, i64* %17, align 8
  %67 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %65, i64 %66
  store %struct.gicv3_its_irqsrc* %67, %struct.gicv3_its_irqsrc** %15, align 8
  %68 = load %struct.its_dev*, %struct.its_dev** %16, align 8
  %69 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %15, align 8
  %70 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %69, i32 0, i32 0
  store %struct.its_dev* %68, %struct.its_dev** %70, align 8
  %71 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %15, align 8
  %72 = bitcast %struct.gicv3_its_irqsrc* %71 to %struct.intr_irqsrc*
  %73 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %13, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.intr_irqsrc*, %struct.intr_irqsrc** %73, i64 %75
  store %struct.intr_irqsrc* %72, %struct.intr_irqsrc** %76, align 8
  br label %77

77:                                               ; preds = %57
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %18, align 4
  %80 = load i64, i64* %17, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %17, align 8
  br label %53

82:                                               ; preds = %53
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.its_dev*, %struct.its_dev** %16, align 8
  %85 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %83
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %12, align 8
  store i32 %89, i32* %90, align 4
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %82, %25
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.its_dev* @its_device_get(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.gicv3_its_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
