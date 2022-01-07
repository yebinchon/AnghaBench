; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@.str = private unnamed_addr constant [30 x i8] c"Invalid call to tegra_i2c_rx\0A\00", align 1
@I2C_FIFO_STATUS = common dso_local global i32 0, align 4
@I2C_RX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_i2c_softc*)* @tegra_i2c_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_rx(%struct.tegra_i2c_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_i2c_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_i2c_softc* %0, %struct.tegra_i2c_softc** %3, align 8
  %7 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %9, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  br label %19

19:                                               ; preds = %77, %18
  %20 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %22, %27
  br i1 %28, label %29, label %78

29:                                               ; preds = %19
  %30 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %31 = load i32, i32* @I2C_FIFO_STATUS, align 4
  %32 = call i32 @RD4(%struct.tegra_i2c_softc* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @I2C_FIFO_STATUS_RX_FIFO_FULL_CNT(i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %78

37:                                               ; preds = %29
  %38 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %39 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %44 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %42, %45
  %47 = call i32 @min(i32 4, i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %49 = load i32, i32* @I2C_RX_FIFO, align 4
  %50 = call i32 @RD4(%struct.tegra_i2c_softc* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %74, %37
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %57, 8
  %59 = ashr i32 %56, %58
  %60 = and i32 %59, 255
  %61 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %62 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %67 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %60, i32* %69, align 4
  %70 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %71 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %55
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %51

77:                                               ; preds = %51
  br label %19

78:                                               ; preds = %36, %19
  %79 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %80 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %83 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp uge i64 %81, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %101

89:                                               ; preds = %78
  %90 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %91 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %96 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %94, %97
  %99 = sub i64 %98, 1
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %89, %88
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @RD4(%struct.tegra_i2c_softc*, i32) #1

declare dso_local i64 @I2C_FIFO_STATUS_RX_FIFO_FULL_CNT(i32) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
