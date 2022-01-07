; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_start_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_start_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_i2c_softc = type { i32, i32, i32, i32, i32, i32, %struct.iic_msg*, i64 }
%struct.iic_msg = type { i32, i32 }

@STATE_IDLE = common dso_local global i32 0, align 4
@RK_I2C_CON = common dso_local global i32 0, align 4
@RK_I2C_CON_CTRL_MASK = common dso_local global i32 0, align 4
@IIC_M_NOSTART = common dso_local global i32 0, align 4
@RK_I2C_CON_MODE_TX = common dso_local global i32 0, align 4
@STATE_START = common dso_local global i32 0, align 4
@RK_I2C_CON_START = common dso_local global i32 0, align 4
@RK_I2C_IEN = common dso_local global i32 0, align 4
@RK_I2C_IEN_STARTIEN = common dso_local global i32 0, align 4
@RK_I2C_CON_MODE_RX = common dso_local global i32 0, align 4
@STATE_READ = common dso_local global i32 0, align 4
@RK_I2C_CON_LASTACK = common dso_local global i32 0, align 4
@RK_I2C_MRXCNT = common dso_local global i32 0, align 4
@RK_I2C_IEN_MBRFIEN = common dso_local global i32 0, align 4
@RK_I2C_IEN_NAKRCVIEN = common dso_local global i32 0, align 4
@STATE_WRITE = common dso_local global i32 0, align 4
@RK_I2C_MTXCNT = common dso_local global i32 0, align 4
@RK_I2C_IEN_MBTFIEN = common dso_local global i32 0, align 4
@RK_I2C_CON_MODE_SHIFT = common dso_local global i32 0, align 4
@RK_I2C_CON_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_i2c_softc*, %struct.iic_msg*, i64)* @rk_i2c_start_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_i2c_start_xfer(%struct.rk_i2c_softc* %0, %struct.iic_msg* %1, i64 %2) #0 {
  %4 = alloca %struct.rk_i2c_softc*, align 8
  %5 = alloca %struct.iic_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rk_i2c_softc* %0, %struct.rk_i2c_softc** %4, align 8
  store %struct.iic_msg* %1, %struct.iic_msg** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %10 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %12 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %14 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %13, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %16 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @STATE_IDLE, align 4
  %18 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %19 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %21 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %22 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %21, i32 0, i32 6
  store %struct.iic_msg* %20, %struct.iic_msg** %22, align 8
  %23 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %24 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %23, i32 0, i32 6
  %25 = load %struct.iic_msg*, %struct.iic_msg** %24, align 8
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %29 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %31 = load i32, i32* @RK_I2C_CON, align 4
  %32 = call i32 @RK_I2C_READ(%struct.rk_i2c_softc* %30, i32 %31)
  %33 = load i32, i32* @RK_I2C_CON_CTRL_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %37 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %36, i32 0, i32 6
  %38 = load %struct.iic_msg*, %struct.iic_msg** %37, align 8
  %39 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IIC_M_NOSTART, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %68, label %44

44:                                               ; preds = %3
  %45 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %46 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RK_I2C_CON_MODE_TX, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %52 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %56 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %55, i32 0, i32 2
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %50, %44
  %58 = load i32, i32* @STATE_START, align 4
  %59 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %60 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @RK_I2C_CON_START, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %65 = load i32, i32* @RK_I2C_IEN, align 4
  %66 = load i32, i32* @RK_I2C_IEN_STARTIEN, align 4
  %67 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %64, i32 %65, i32 %66)
  br label %116

68:                                               ; preds = %3
  %69 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %70 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @RK_I2C_CON_MODE_RX, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %68
  %75 = load i32, i32* @STATE_READ, align 4
  %76 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %77 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load i64, i64* %6, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @RK_I2C_CON_LASTACK, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %74
  %85 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %86 = load i32, i32* @RK_I2C_MRXCNT, align 4
  %87 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %88 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %87, i32 0, i32 6
  %89 = load %struct.iic_msg*, %struct.iic_msg** %88, align 8
  %90 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %85, i32 %86, i32 %91)
  %93 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %94 = load i32, i32* @RK_I2C_IEN, align 4
  %95 = load i32, i32* @RK_I2C_IEN_MBRFIEN, align 4
  %96 = load i32, i32* @RK_I2C_IEN_NAKRCVIEN, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %93, i32 %94, i32 %97)
  br label %115

99:                                               ; preds = %68
  %100 = load i32, i32* @STATE_WRITE, align 4
  %101 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %102 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %104 = call i32 @rk_i2c_fill_tx(%struct.rk_i2c_softc* %103)
  store i32 %104, i32* %8, align 4
  %105 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %106 = load i32, i32* @RK_I2C_MTXCNT, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %105, i32 %106, i32 %107)
  %109 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %110 = load i32, i32* @RK_I2C_IEN, align 4
  %111 = load i32, i32* @RK_I2C_IEN_MBTFIEN, align 4
  %112 = load i32, i32* @RK_I2C_IEN_NAKRCVIEN, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %109, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %99, %84
  br label %116

116:                                              ; preds = %115, %57
  %117 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %118 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @RK_I2C_CON_MODE_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @RK_I2C_CON_EN, align 4
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %7, align 4
  %127 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %128 = load i32, i32* @RK_I2C_CON, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %127, i32 %128, i32 %129)
  ret void
}

declare dso_local i32 @RK_I2C_READ(%struct.rk_i2c_softc*, i32) #1

declare dso_local i32 @RK_I2C_WRITE(%struct.rk_i2c_softc*, i32, i32) #1

declare dso_local i32 @rk_i2c_fill_tx(%struct.rk_i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
