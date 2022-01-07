; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_flush_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_flush_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_softc = type { i32 }

@I2C_FIFO_CONTROL = common dso_local global i32 0, align 4
@I2C_FIFO_CONTROL_TX_FIFO_FLUSH = common dso_local global i32 0, align 4
@I2C_FIFO_CONTROL_RX_FIFO_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"FIFO flush timedout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_i2c_softc*)* @tegra_i2c_flush_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_flush_fifo(%struct.tegra_i2c_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_i2c_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tegra_i2c_softc* %0, %struct.tegra_i2c_softc** %3, align 8
  %6 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %7 = load i32, i32* @I2C_FIFO_CONTROL, align 4
  %8 = call i32 @RD4(%struct.tegra_i2c_softc* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @I2C_FIFO_CONTROL_TX_FIFO_FLUSH, align 4
  %10 = load i32, i32* @I2C_FIFO_CONTROL_RX_FIFO_FLUSH, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %15 = load i32, i32* @I2C_FIFO_CONTROL, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @WR4(%struct.tegra_i2c_softc* %14, i32 %15, i32 %16)
  store i32 10, i32* %4, align 4
  br label %18

18:                                               ; preds = %33, %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %23 = load i32, i32* @I2C_FIFO_CONTROL, align 4
  %24 = call i32 @RD4(%struct.tegra_i2c_softc* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @I2C_FIFO_CONTROL_TX_FIFO_FLUSH, align 4
  %26 = load i32, i32* @I2C_FIFO_CONTROL_RX_FIFO_FLUSH, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %35

33:                                               ; preds = %21
  %34 = call i32 @DELAY(i32 10)
  br label %18

35:                                               ; preds = %32, %18
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @RD4(%struct.tegra_i2c_softc*, i32) #1

declare dso_local i32 @WR4(%struct.tegra_i2c_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
