; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"i2c stop\0A\00", align 1
@I2C_IBCR = common dso_local global i32 0, align 4
@IBCR_NOACK = common dso_local global i32 0, align 4
@IBCR_IBIE = common dso_local global i32 0, align 4
@IIC_ETIMEOUT = common dso_local global i64 0, align 8
@IBCR_MDIS = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.i2c_softc* @device_get_softc(i32 %4)
  store %struct.i2c_softc* %5, %struct.i2c_softc** %3, align 8
  %6 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %7 = call i32 @vf_i2c_dbg(%struct.i2c_softc* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %12 = load i32, i32* @I2C_IBCR, align 4
  %13 = load i32, i32* @IBCR_NOACK, align 4
  %14 = load i32, i32* @IBCR_IBIE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @WRITE1(%struct.i2c_softc* %11, i32 %12, i32 %15)
  %17 = call i32 @DELAY(i32 100)
  %18 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %19 = call i64 @wait_for_nibb(%struct.i2c_softc* %18)
  %20 = load i64, i64* @IIC_ETIMEOUT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %24 = load i32, i32* @I2C_IBCR, align 4
  %25 = load i32, i32* @IBCR_MDIS, align 4
  %26 = call i32 @WRITE1(%struct.i2c_softc* %23, i32 %24, i32 %25)
  %27 = call i32 @DELAY(i32 1000)
  %28 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %29 = load i32, i32* @I2C_IBCR, align 4
  %30 = load i32, i32* @IBCR_NOACK, align 4
  %31 = call i32 @WRITE1(%struct.i2c_softc* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %1
  %33 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
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

declare dso_local i64 @wait_for_nibb(%struct.i2c_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
