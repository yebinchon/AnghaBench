; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.i2c_softc = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"reset\0A\00", align 1
@clkdiv_table = common dso_local global %struct.TYPE_3__* null, align 8
@SBT_1US = common dso_local global i32 0, align 4
@I2C_STATUS_REG = common dso_local global i32 0, align 4
@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@I2C_FDR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @i2c_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_reset(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i2c_softc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.i2c_softc* @device_get_softc(i32 %14)
  store %struct.i2c_softc* %15, %struct.i2c_softc** %9, align 8
  %16 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %17 = call i32 @DEVICE_DEBUGF(%struct.i2c_softc* %16, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 (...) @imx_ccm_ipg_hz()
  store i64 %18, i64* %13, align 8
  %19 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %20 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @IICBUS_GET_FREQUENCY(i32 %21, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @howmany(i64 %24, i64 %25)
  store i64 %26, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %27

27:                                               ; preds = %42, %4
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clkdiv_table, align 8
  %30 = call i64 @nitems(%struct.TYPE_3__* %29)
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clkdiv_table, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %45

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %12, align 8
  br label %27

45:                                               ; preds = %40, %27
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clkdiv_table, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = udiv i64 %46, %51
  store i64 %52, i64* %10, align 8
  %53 = load i32, i32* @SBT_1US, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %10, align 8
  %56 = udiv i64 9000000, %55
  %57 = mul i64 %54, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %60 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %62 = load i32, i32* @I2C_STATUS_REG, align 4
  %63 = call i32 @i2c_write_reg(%struct.i2c_softc* %61, i32 %62, i32 0)
  %64 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %65 = load i32, i32* @I2C_CONTROL_REG, align 4
  %66 = call i32 @i2c_write_reg(%struct.i2c_softc* %64, i32 %65, i32 0)
  %67 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %68 = load i32, i32* @I2C_FDR_REG, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clkdiv_table, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @i2c_write_reg(%struct.i2c_softc* %67, i32 %68, i32 %74)
  %76 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %77 = call i32 @i2c_recover_bus(%struct.i2c_softc* %76)
  ret i32 %77
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @DEVICE_DEBUGF(%struct.i2c_softc*, i32, i8*) #1

declare dso_local i64 @imx_ccm_ipg_hz(...) #1

declare dso_local i64 @IICBUS_GET_FREQUENCY(i32, i32) #1

declare dso_local i64 @howmany(i64, i64) #1

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @i2c_write_reg(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @i2c_recover_bus(%struct.i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
