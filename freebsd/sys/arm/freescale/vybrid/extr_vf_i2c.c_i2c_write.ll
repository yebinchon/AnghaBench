; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"i2c write\0A\00", align 1
@I2C_IBDR = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*, i32)* @i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_write(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_softc*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.i2c_softc* @device_get_softc(i32 %14)
  store %struct.i2c_softc* %15, %struct.i2c_softc** %12, align 8
  %16 = load %struct.i2c_softc*, %struct.i2c_softc** %12, align 8
  %17 = call i32 @vf_i2c_dbg(%struct.i2c_softc* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %10, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.i2c_softc*, %struct.i2c_softc** %12, align 8
  %20 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  br label %22

22:                                               ; preds = %44, %5
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.i2c_softc*, %struct.i2c_softc** %12, align 8
  %29 = load i32, i32* @I2C_IBDR, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 @WRITE1(%struct.i2c_softc* %28, i32 %29, i32 %33)
  %35 = load %struct.i2c_softc*, %struct.i2c_softc** %12, align 8
  %36 = call i32 @wait_for_iif(%struct.i2c_softc* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.i2c_softc*, %struct.i2c_softc** %12, align 8
  %41 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %40, i32 0, i32 0
  %42 = call i32 @mtx_unlock(i32* %41)
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %6, align 4
  br label %53

44:                                               ; preds = %27
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %22

48:                                               ; preds = %22
  %49 = load %struct.i2c_softc*, %struct.i2c_softc** %12, align 8
  %50 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %49, i32 0, i32 0
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load i32, i32* @IIC_NOERR, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %39
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @vf_i2c_dbg(%struct.i2c_softc*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @WRITE1(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @wait_for_iif(%struct.i2c_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
