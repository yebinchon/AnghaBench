; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"i2c reset\0A\00", align 1
@I2C_IBCR = common dso_local global i32 0, align 4
@IBCR_MDIS = common dso_local global i32 0, align 4
@I2C_IBFD = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @i2c_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_reset(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i2c_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.i2c_softc* @device_get_softc(i32 %10)
  store %struct.i2c_softc* %11, %struct.i2c_softc** %9, align 8
  %12 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %13 = call i32 @vf_i2c_dbg(%struct.i2c_softc* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %16 [
    i32 131, label %15
    i32 129, label %15
    i32 128, label %15
    i32 130, label %15
  ]

15:                                               ; preds = %4, %4, %4, %4
  br label %16

16:                                               ; preds = %4, %15
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %19 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %22 = load i32, i32* @I2C_IBCR, align 4
  %23 = load i32, i32* @IBCR_MDIS, align 4
  %24 = call i32 @WRITE1(%struct.i2c_softc* %21, i32 %22, i32 %23)
  %25 = call i32 @DELAY(i32 1000)
  %26 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %27 = load i32, i32* @I2C_IBFD, align 4
  %28 = call i32 @WRITE1(%struct.i2c_softc* %26, i32 %27, i32 20)
  %29 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %30 = load i32, i32* @I2C_IBCR, align 4
  %31 = call i32 @WRITE1(%struct.i2c_softc* %29, i32 %30, i32 0)
  %32 = call i32 @DELAY(i32 1000)
  %33 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %34 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = load i32, i32* @IIC_NOERR, align 4
  ret i32 %36
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @vf_i2c_dbg(%struct.i2c_softc*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @WRITE1(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
