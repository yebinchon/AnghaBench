; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_repeated_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_repeated_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"i2c repeated start\0A\00", align 1
@I2C_IBAD = common dso_local global i32 0, align 4
@I2C_IBSR = common dso_local global i32 0, align 4
@IBSR_IBB = common dso_local global i32 0, align 4
@IIC_EBUSERR = common dso_local global i32 0, align 4
@I2C_IBCR = common dso_local global i32 0, align 4
@IBCR_RSTA = common dso_local global i32 0, align 4
@IBCR_IBIE = common dso_local global i32 0, align 4
@I2C_IBDR = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @i2c_repeated_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_repeated_start(i32 %0, i32 %1, i32 %2) #0 {
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
  %14 = call i32 @vf_i2c_dbg(%struct.i2c_softc* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
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
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %30 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %29, i32 0, i32 0
  %31 = call i32 @mtx_unlock(i32* %30)
  %32 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %32, i32* %4, align 4
  br label %63

33:                                               ; preds = %3
  %34 = call i32 @DELAY(i32 10)
  %35 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %36 = load i32, i32* @I2C_IBCR, align 4
  %37 = call i32 @READ1(%struct.i2c_softc* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @IBCR_RSTA, align 4
  %39 = load i32, i32* @IBCR_IBIE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %44 = load i32, i32* @I2C_IBCR, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @WRITE1(%struct.i2c_softc* %43, i32 %44, i32 %45)
  %47 = call i32 @DELAY(i32 10)
  %48 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %49 = load i32, i32* @I2C_IBDR, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @WRITE1(%struct.i2c_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %53 = call i32 @wait_for_iif(%struct.i2c_softc* %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %55 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %54, i32 0, i32 0
  %56 = call i32 @mtx_unlock(i32* %55)
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %33
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %33
  %62 = load i32, i32* @IIC_NOERR, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %59, %28
  %64 = load i32, i32* %4, align 4
  ret i32 %64
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
