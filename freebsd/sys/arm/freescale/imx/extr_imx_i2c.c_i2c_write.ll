; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"write  0x%02x len %d: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@I2C_STATUS_REG = common dso_local global i32 0, align 4
@I2C_DATA_REG = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*, i32)* @i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_write(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_softc*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.i2c_softc* @device_get_softc(i32 %13)
  store %struct.i2c_softc* %14, %struct.i2c_softc** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.i2c_softc*, %struct.i2c_softc** %11, align 8
  %17 = load %struct.i2c_softc*, %struct.i2c_softc** %11, align 8
  %18 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @DEVICE_DEBUGF(%struct.i2c_softc* %16, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %48, %5
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load %struct.i2c_softc*, %struct.i2c_softc** %11, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 (%struct.i2c_softc*, i32, i8*, ...) @DEBUGF(%struct.i2c_softc* %28, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.i2c_softc*, %struct.i2c_softc** %11, align 8
  %34 = load i32, i32* @I2C_STATUS_REG, align 4
  %35 = call i32 @i2c_write_reg(%struct.i2c_softc* %33, i32 %34, i32 0)
  %36 = load %struct.i2c_softc*, %struct.i2c_softc** %11, align 8
  %37 = load i32, i32* @I2C_DATA_REG, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 @i2c_write_reg(%struct.i2c_softc* %36, i32 %37, i32 %41)
  %43 = load %struct.i2c_softc*, %struct.i2c_softc** %11, align 8
  %44 = call i32 @wait_for_xfer(%struct.i2c_softc* %43, i32 1)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @IIC_NOERR, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  br label %52

48:                                               ; preds = %27
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %22

52:                                               ; preds = %47, %22
  %53 = load %struct.i2c_softc*, %struct.i2c_softc** %11, align 8
  %54 = call i32 (%struct.i2c_softc*, i32, i8*, ...) @DEBUGF(%struct.i2c_softc* %53, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.i2c_softc*, %struct.i2c_softc** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @i2c_error_handler(%struct.i2c_softc* %55, i32 %56)
  ret i32 %57
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @DEVICE_DEBUGF(%struct.i2c_softc*, i32, i8*, i32, i32) #1

declare dso_local i32 @DEBUGF(%struct.i2c_softc*, i32, i8*, ...) #1

declare dso_local i32 @i2c_write_reg(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @wait_for_xfer(%struct.i2c_softc*, i32) #1

declare dso_local i32 @i2c_error_handler(%struct.i2c_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
