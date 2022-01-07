; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_wait_for_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_wait_for_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"imxi2c\00", align 1
@I2C_STATUS_REG = common dso_local global i32 0, align 4
@I2CSR_MIF = common dso_local global i32 0, align 4
@I2CSR_MAL = common dso_local global i32 0, align 4
@IIC_EBUSERR = common dso_local global i32 0, align 4
@I2CSR_RXAK = common dso_local global i32 0, align 4
@IIC_ENOACK = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@IIC_ETIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_softc*, i32)* @wait_for_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_xfer(%struct.i2c_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_softc* %0, %struct.i2c_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 20
  %15 = call i32 @pause_sbt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 0)
  store i32 10000, i32* %6, align 4
  br label %16

16:                                               ; preds = %47, %2
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %22 = load i32, i32* @I2C_STATUS_REG, align 4
  %23 = call i32 @i2c_read_reg(%struct.i2c_softc* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @I2CSR_MIF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @I2CSR_MAL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %34, i32* %3, align 4
  br label %51

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @I2CSR_RXAK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @IIC_ENOACK, align 4
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %38, %35
  %46 = load i32, i32* @IIC_NOERR, align 4
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %20
  %48 = call i32 @DELAY(i32 1)
  br label %16

49:                                               ; preds = %16
  %50 = load i32, i32* @IIC_ETIMEOUT, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %45, %43, %33
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @pause_sbt(i8*, i32, i32, i32) #1

declare dso_local i32 @i2c_read_reg(%struct.i2c_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
