; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_i2c.c_i2c_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_i2c.c_i2c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"i2c start\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cant i2c start: IIC_EBUSERR\0A\00", align 1
@IIC_EBUSERR = common dso_local global i32 0, align 4
@I2CCON = common dso_local global i32 0, align 4
@IRQ_EN = common dso_local global i32 0, align 4
@ACKGEN = common dso_local global i32 0, align 4
@I2CDS = common dso_local global i32 0, align 4
@RXTX_EN = common dso_local global i32 0, align 4
@I2C_START_STOP = common dso_local global i32 0, align 4
@I2CMODE_MT = common dso_local global i32 0, align 4
@I2CMODE_S = common dso_local global i32 0, align 4
@I2CSTAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cant i2c start: iif error\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cant i2c start: no ack\0A\00", align 1
@IIC_ENOACK = common dso_local global i32 0, align 4
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
  %13 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %15 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, -2
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %32 = call i32 @wait_for_nibb(%struct.i2c_softc* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %37 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %36, i32 0, i32 0
  %38 = call i32 @mtx_unlock(i32* %37)
  %39 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %40, i32* %4, align 4
  br label %97

41:                                               ; preds = %30
  %42 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %43 = load i32, i32* @I2CCON, align 4
  %44 = call i32 @READ1(%struct.i2c_softc* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @IRQ_EN, align 4
  %46 = load i32, i32* @ACKGEN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %51 = load i32, i32* @I2CCON, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @WRITE1(%struct.i2c_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %55 = load i32, i32* @I2CDS, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @WRITE1(%struct.i2c_softc* %54, i32 %55, i32 %56)
  %58 = call i32 @DELAY(i32 50)
  %59 = load i32, i32* @RXTX_EN, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @I2C_START_STOP, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @I2CMODE_MT, align 4
  %64 = load i32, i32* @I2CMODE_S, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %69 = load i32, i32* @I2CSTAT, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @WRITE1(%struct.i2c_softc* %68, i32 %69, i32 %70)
  %72 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %73 = call i32 @wait_for_iif(%struct.i2c_softc* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %41
  %77 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %79 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %78, i32 0, i32 0
  %80 = call i32 @mtx_unlock(i32* %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %97

82:                                               ; preds = %41
  %83 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %84 = call i32 @is_ack(%struct.i2c_softc* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %89 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %88, i32 0, i32 0
  %90 = call i32 @mtx_unlock(i32* %89)
  %91 = load i32, i32* @IIC_ENOACK, align 4
  store i32 %91, i32* %4, align 4
  br label %97

92:                                               ; preds = %82
  %93 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %94 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %93, i32 0, i32 0
  %95 = call i32 @mtx_unlock(i32* %94)
  %96 = load i32, i32* @IIC_NOERR, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %86, %76, %35
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wait_for_nibb(%struct.i2c_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @READ1(%struct.i2c_softc*, i32) #1

declare dso_local i32 @WRITE1(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @wait_for_iif(%struct.i2c_softc*) #1

declare dso_local i32 @is_ack(%struct.i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
