; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_repeated_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_repeated_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@I2C_STATUS_REG = common dso_local global i32 0, align 4
@I2CSR_MBB = common dso_local global i32 0, align 4
@IIC_EBUSERR = common dso_local global i32 0, align 4
@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@I2CCR_RSTA = common dso_local global i32 0, align 4
@I2C_DATA_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"rstart 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @i2c_repeated_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_repeated_start(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.i2c_softc* @device_get_softc(i32 %10)
  store %struct.i2c_softc* %11, %struct.i2c_softc** %8, align 8
  %12 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %13 = load i32, i32* @I2C_STATUS_REG, align 4
  %14 = call i32 @i2c_read_reg(%struct.i2c_softc* %12, i32 %13)
  %15 = load i32, i32* @I2CSR_MBB, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %19, i32* %4, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %22 = load i32, i32* @I2C_CONTROL_REG, align 4
  %23 = load i32, i32* @I2CCR_RSTA, align 4
  %24 = call i32 @i2c_flag_set(%struct.i2c_softc* %21, i32 %22, i32 %23)
  %25 = call i32 @DELAY(i32 1)
  %26 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %27 = load i32, i32* @I2C_STATUS_REG, align 4
  %28 = call i32 @i2c_write_reg(%struct.i2c_softc* %26, i32 %27, i32 0)
  %29 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %30 = load i32, i32* @I2C_DATA_REG, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @i2c_write_reg(%struct.i2c_softc* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %35 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %37 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %38 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DEVICE_DEBUGF(%struct.i2c_softc* %36, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %42 = call i32 @wait_for_xfer(%struct.i2c_softc* %41, i32 1)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @i2c_error_handler(%struct.i2c_softc* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %20, %18
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @i2c_read_reg(%struct.i2c_softc*, i32) #1

declare dso_local i32 @i2c_flag_set(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @i2c_write_reg(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @DEVICE_DEBUGF(%struct.i2c_softc*, i32, i8*, i32) #1

declare dso_local i32 @wait_for_xfer(%struct.i2c_softc*, i32) #1

declare dso_local i32 @i2c_error_handler(%struct.i2c_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
