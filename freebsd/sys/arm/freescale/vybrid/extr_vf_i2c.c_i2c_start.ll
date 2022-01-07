; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"i2c start\0A\00", align 1
@I2C_IBAD = common dso_local global i32 0, align 4
@I2C_IBSR = common dso_local global i32 0, align 4
@IBSR_IBB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cant i2c start: IIC_EBUSBSY\0A\00", align 1
@IIC_EBUSERR = common dso_local global i32 0, align 4
@IBCR_MSSL = common dso_local global i32 0, align 4
@IBCR_NOACK = common dso_local global i32 0, align 4
@IBCR_IBIE = common dso_local global i32 0, align 4
@I2C_IBCR = common dso_local global i32 0, align 4
@IBCR_TXRX = common dso_local global i32 0, align 4
@I2C_IBDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cant i2c start: iif error\0A\00", align 1
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @i2c_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_start(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.i2c_softc* @device_get_softc(i32 %11)
  store %struct.i2c_softc* %12, %struct.i2c_softc** %8, align 8
  %13 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %14 = call i32 @vf_i2c_dbg(%struct.i2c_softc* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %16 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %15, i32 0, i32 0
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %19 = load i32, i32* @I2C_IBAD, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @WRITE1(%struct.i2c_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %23 = load i32, i32* @I2C_IBSR, align 4
  %24 = call i32 @READ1(%struct.i2c_softc* %22, i32 %23)
  %25 = load i32, i32* @IBSR_IBB, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %30 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %29, i32 0, i32 0
  %31 = call i32 @mtx_unlock(i32* %30)
  %32 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %33 = call i32 @vf_i2c_dbg(%struct.i2c_softc* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %34, i32* %4, align 4
  br label %70

35:                                               ; preds = %3
  %36 = load i32, i32* @IBCR_MSSL, align 4
  %37 = load i32, i32* @IBCR_NOACK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IBCR_IBIE, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %42 = load i32, i32* @I2C_IBCR, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @WRITE1(%struct.i2c_softc* %41, i32 %42, i32 %43)
  %45 = call i32 @DELAY(i32 100)
  %46 = load i32, i32* @IBCR_TXRX, align 4
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %50 = load i32, i32* @I2C_IBCR, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @WRITE1(%struct.i2c_softc* %49, i32 %50, i32 %51)
  %53 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %54 = load i32, i32* @I2C_IBDR, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @WRITE1(%struct.i2c_softc* %53, i32 %54, i32 %55)
  %57 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %58 = call i32 @wait_for_iif(%struct.i2c_softc* %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %60 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %59, i32 0, i32 0
  %61 = call i32 @mtx_unlock(i32* %60)
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %35
  %65 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %66 = call i32 @vf_i2c_dbg(%struct.i2c_softc* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %35
  %69 = load i32, i32* @IIC_NOERR, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %64, %28
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @vf_i2c_dbg(%struct.i2c_softc*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @WRITE1(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @READ1(%struct.i2c_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @wait_for_iif(%struct.i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
