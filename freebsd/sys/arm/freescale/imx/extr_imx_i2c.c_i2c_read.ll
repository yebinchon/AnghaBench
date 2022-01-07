; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"read   0x%02x len %d: \00", align 1
@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@I2CCR_MEN = common dso_local global i32 0, align 4
@I2CCR_MSTA = common dso_local global i32 0, align 4
@I2CCR_TXAK = common dso_local global i32 0, align 4
@I2C_STATUS_REG = common dso_local global i32 0, align 4
@I2C_DATA_REG = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*, i32, i32)* @i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2c_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.i2c_softc* @device_get_softc(i32 %16)
  store %struct.i2c_softc* %17, %struct.i2c_softc** %13, align 8
  %18 = load i32*, i32** %10, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %20 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %21 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @DEVICE_DEBUGF(%struct.i2c_softc* %19, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %6
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %32 = load i32, i32* @I2C_CONTROL_REG, align 4
  %33 = load i32, i32* @I2CCR_MEN, align 4
  %34 = load i32, i32* @I2CCR_MSTA, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @I2CCR_TXAK, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @i2c_write_reg(%struct.i2c_softc* %31, i32 %32, i32 %37)
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %41 = load i32, i32* @I2C_CONTROL_REG, align 4
  %42 = load i32, i32* @I2CCR_MEN, align 4
  %43 = load i32, i32* @I2CCR_MSTA, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @i2c_write_reg(%struct.i2c_softc* %40, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %30
  %47 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %48 = load i32, i32* @I2C_STATUS_REG, align 4
  %49 = call i32 @i2c_write_reg(%struct.i2c_softc* %47, i32 %48, i32 0)
  %50 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %51 = load i32, i32* @I2C_DATA_REG, align 4
  %52 = call i32 @i2c_read_reg(%struct.i2c_softc* %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %6
  store i32 0, i32* %14, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %104, %53
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %118

60:                                               ; preds = %55
  %61 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %62 = call i32 @wait_for_xfer(%struct.i2c_softc* %61, i32 0)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* @IIC_NOERR, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %118

66:                                               ; preds = %60
  %67 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %68 = load i32, i32* @I2C_STATUS_REG, align 4
  %69 = call i32 @i2c_write_reg(%struct.i2c_softc* %67, i32 %68, i32 0)
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %66
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %75, 2
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %80 = load i32, i32* @I2C_CONTROL_REG, align 4
  %81 = load i32, i32* @I2CCR_MEN, align 4
  %82 = load i32, i32* @I2CCR_MSTA, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @I2CCR_TXAK, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @i2c_write_reg(%struct.i2c_softc* %79, i32 %80, i32 %85)
  br label %103

87:                                               ; preds = %72
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %95 = load i32, i32* @I2C_CONTROL_REG, align 4
  %96 = load i32, i32* @I2CCR_MEN, align 4
  %97 = load i32, i32* @I2CCR_TXAK, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @i2c_write_reg(%struct.i2c_softc* %94, i32 %95, i32 %98)
  %100 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %101 = call i32 @wait_for_busbusy(%struct.i2c_softc* %100, i32 0)
  br label %102

102:                                              ; preds = %93, %87
  br label %103

103:                                              ; preds = %102, %78
  br label %104

104:                                              ; preds = %103, %66
  %105 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %106 = load i32, i32* @I2C_DATA_REG, align 4
  %107 = call i32 @i2c_read_reg(%struct.i2c_softc* %105, i32 %106)
  store i32 %107, i32* %15, align 4
  %108 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %109 = load i32, i32* %15, align 4
  %110 = call i32 (%struct.i2c_softc*, i32, i8*, ...) @DEBUGF(%struct.i2c_softc* %108, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %15, align 4
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %8, align 8
  store i8 %112, i8* %113, align 1
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %55

118:                                              ; preds = %65, %55
  %119 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %120 = call i32 (%struct.i2c_softc*, i32, i8*, ...) @DEBUGF(%struct.i2c_softc* %119, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %121 = load %struct.i2c_softc*, %struct.i2c_softc** %13, align 8
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @i2c_error_handler(%struct.i2c_softc* %121, i32 %122)
  ret i32 %123
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @DEVICE_DEBUGF(%struct.i2c_softc*, i32, i8*, i32, i32) #1

declare dso_local i32 @i2c_write_reg(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @i2c_read_reg(%struct.i2c_softc*, i32) #1

declare dso_local i32 @wait_for_xfer(%struct.i2c_softc*, i32) #1

declare dso_local i32 @wait_for_busbusy(%struct.i2c_softc*, i32) #1

declare dso_local i32 @DEBUGF(%struct.i2c_softc*, i32, i8*, ...) #1

declare dso_local i32 @i2c_error_handler(%struct.i2c_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
