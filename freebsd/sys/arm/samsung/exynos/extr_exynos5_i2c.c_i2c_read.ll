; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_i2c.c_i2c_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_i2c.c_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"i2c read\0A\00", align 1
@RXTX_EN = common dso_local global i32 0, align 4
@I2CMODE_MR = common dso_local global i32 0, align 4
@I2CMODE_S = common dso_local global i32 0, align 4
@I2C_START_STOP = common dso_local global i32 0, align 4
@I2CSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cant i2c read: iif error\0A\00", align 1
@I2CDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Read \00", align 1
@I2CCON = common dso_local global i32 0, align 4
@ACKGEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*, i32, i32)* @i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i2c_softc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.i2c_softc* @device_get_softc(i32 %18)
  store %struct.i2c_softc* %19, %struct.i2c_softc** %14, align 8
  %20 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @RXTX_EN, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* @I2CMODE_MR, align 4
  %23 = load i32, i32* @I2CMODE_S, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %16, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* @I2C_START_STOP, align 4
  %28 = load i32, i32* %16, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %16, align 4
  %30 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %31 = load i32, i32* @I2CSTAT, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @WRITE1(%struct.i2c_softc* %30, i32 %31, i32 %32)
  %34 = load i32*, i32** %11, align 8
  store i32 0, i32* %34, align 4
  %35 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %36 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %35, i32 0, i32 0
  %37 = call i32 @mtx_lock(i32* %36)
  %38 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %39 = call i32 @clear_ipend(%struct.i2c_softc* %38)
  %40 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %41 = call i32 @wait_for_iif(%struct.i2c_softc* %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %6
  %45 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %47 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %46, i32 0, i32 0
  %48 = call i32 @mtx_unlock(i32* %47)
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %7, align 4
  br label %111

50:                                               ; preds = %6
  %51 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %52 = load i32, i32* @I2CDS, align 4
  %53 = call i8* @READ1(%struct.i2c_softc* %51, i32 %52)
  %54 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %92, %50
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %105

60:                                               ; preds = %55
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %68 = load i32, i32* @I2CCON, align 4
  %69 = call i8* @READ1(%struct.i2c_softc* %67, i32 %68)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* @ACKGEN, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %16, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %16, align 4
  %75 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %76 = load i32, i32* @I2CCON, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @WRITE1(%struct.i2c_softc* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %66, %60
  %80 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %81 = call i32 @clear_ipend(%struct.i2c_softc* %80)
  %82 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %83 = call i32 @wait_for_iif(%struct.i2c_softc* %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %89 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %88, i32 0, i32 0
  %90 = call i32 @mtx_unlock(i32* %89)
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %7, align 4
  br label %111

92:                                               ; preds = %79
  %93 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %94 = load i32, i32* @I2CDS, align 4
  %95 = call i8* @READ1(%struct.i2c_softc* %93, i32 %94)
  store i8* %95, i8** %17, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  %98 = load i8*, i8** %17, align 8
  %99 = ptrtoint i8* %98 to i8
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %9, align 8
  store i8 %99, i8* %100, align 1
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %55

105:                                              ; preds = %55
  %106 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %108 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %107, i32 0, i32 0
  %109 = call i32 @mtx_unlock(i32* %108)
  %110 = load i32, i32* @IIC_NOERR, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %105, %86, %44
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @WRITE1(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @clear_ipend(%struct.i2c_softc*) #1

declare dso_local i32 @wait_for_iif(%struct.i2c_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i8* @READ1(%struct.i2c_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
