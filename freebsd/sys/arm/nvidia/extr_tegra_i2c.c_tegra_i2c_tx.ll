; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@.str = private unnamed_addr constant [30 x i8] c"Invalid call to tegra_i2c_tx\0A\00", align 1
@I2C_FIFO_STATUS = common dso_local global i32 0, align 4
@I2C_TX_PACKET_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_i2c_softc*)* @tegra_i2c_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_tx(%struct.tegra_i2c_softc* %0) #0 {
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

19:                                               ; preds = %75, %18
  %20 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %22, %27
  br i1 %28, label %29, label %80

29:                                               ; preds = %19
  %30 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %31 = load i32, i32* @I2C_FIFO_STATUS, align 4
  %32 = call i32 @RD4(%struct.tegra_i2c_softc* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @I2C_FIFO_STATUS_TX_FIFO_EMPTY_CNT(i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %80

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
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %72, %37
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %54 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %59 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 %63, 8
  %65 = shl i32 %62, %64
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %69 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %52
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %48

75:                                               ; preds = %48
  %76 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %77 = load i32, i32* @I2C_TX_PACKET_FIFO, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @WR4(%struct.tegra_i2c_softc* %76, i32 %77, i32 %78)
  br label %19

80:                                               ; preds = %36, %19
  %81 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %82 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %85 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp uge i64 %83, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %103

91:                                               ; preds = %80
  %92 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %93 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %98 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %96, %99
  %101 = sub i64 %100, 1
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %91, %90
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @RD4(%struct.tegra_i2c_softc*, i32) #1

declare dso_local i64 @I2C_FIFO_STATUS_TX_FIFO_EMPTY_CNT(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @WR4(%struct.tegra_i2c_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
