; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_start_ll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_start_ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@I2CCR_MEN = common dso_local global i32 0, align 4
@I2C_STATUS_REG = common dso_local global i32 0, align 4
@I2CSR_MBB = common dso_local global i32 0, align 4
@IIC_EBUSERR = common dso_local global i32 0, align 4
@I2CCR_MSTA = common dso_local global i32 0, align 4
@I2CCR_MTX = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@I2C_DATA_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"start  0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @i2c_start_ll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_start_ll(i32 %0, i32 %1, i32 %2) #0 {
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
  %13 = load i32, i32* @I2C_CONTROL_REG, align 4
  %14 = load i32, i32* @I2CCR_MEN, align 4
  %15 = call i32 @i2c_write_reg(%struct.i2c_softc* %12, i32 %13, i32 %14)
  %16 = call i32 @DELAY(i32 10)
  %17 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %18 = load i32, i32* @I2C_STATUS_REG, align 4
  %19 = call i32 @i2c_read_reg(%struct.i2c_softc* %17, i32 %18)
  %20 = load i32, i32* @I2CSR_MBB, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %25 = load i32, i32* @IIC_EBUSERR, align 4
  %26 = call i32 @i2c_error_handler(%struct.i2c_softc* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %65

27:                                               ; preds = %3
  %28 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %29 = load i32, i32* @I2C_CONTROL_REG, align 4
  %30 = load i32, i32* @I2CCR_MEN, align 4
  %31 = load i32, i32* @I2CCR_MSTA, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @I2CCR_MTX, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @i2c_write_reg(%struct.i2c_softc* %28, i32 %29, i32 %34)
  %36 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %37 = call i32 @wait_for_busbusy(%struct.i2c_softc* %36, i32 1)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @IIC_NOERR, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @i2c_error_handler(%struct.i2c_softc* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %65

44:                                               ; preds = %27
  %45 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %46 = load i32, i32* @I2C_STATUS_REG, align 4
  %47 = call i32 @i2c_write_reg(%struct.i2c_softc* %45, i32 %46, i32 0)
  %48 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %49 = load i32, i32* @I2C_DATA_REG, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @i2c_write_reg(%struct.i2c_softc* %48, i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %54 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %56 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %57 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @DEVICE_DEBUGF(%struct.i2c_softc* %55, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %61 = call i32 @wait_for_xfer(%struct.i2c_softc* %60, i32 1)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @i2c_error_handler(%struct.i2c_softc* %62, i32 %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %44, %40, %23
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @i2c_write_reg(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @i2c_read_reg(%struct.i2c_softc*, i32) #1

declare dso_local i32 @i2c_error_handler(%struct.i2c_softc*, i32) #1

declare dso_local i32 @wait_for_busbusy(%struct.i2c_softc*, i32) #1

declare dso_local i32 @DEVICE_DEBUGF(%struct.i2c_softc*, i32, i8*, i32) #1

declare dso_local i32 @wait_for_xfer(%struct.i2c_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
