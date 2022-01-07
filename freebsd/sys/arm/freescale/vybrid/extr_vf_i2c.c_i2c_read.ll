; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"i2c read\0A\00", align 1
@I2C_IBCR = common dso_local global i32 0, align 4
@IBCR_IBIE = common dso_local global i32 0, align 4
@IBCR_MSSL = common dso_local global i32 0, align 4
@IBCR_NOACK = common dso_local global i32 0, align 4
@I2C_IBDR = common dso_local global i32 0, align 4
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
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.i2c_softc* @device_get_softc(i32 %16)
  store %struct.i2c_softc* %17, %struct.i2c_softc** %14, align 8
  %18 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %19 = call i32 @vf_i2c_dbg(%struct.i2c_softc* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %22 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %21, i32 0, i32 0
  %23 = call i32 @mtx_lock(i32* %22)
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %6
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %31 = load i32, i32* @I2C_IBCR, align 4
  %32 = load i32, i32* @IBCR_IBIE, align 4
  %33 = load i32, i32* @IBCR_MSSL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @IBCR_NOACK, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @WRITE1(%struct.i2c_softc* %30, i32 %31, i32 %36)
  br label %45

38:                                               ; preds = %26
  %39 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %40 = load i32, i32* @I2C_IBCR, align 4
  %41 = load i32, i32* @IBCR_IBIE, align 4
  %42 = load i32, i32* @IBCR_MSSL, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @WRITE1(%struct.i2c_softc* %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %38, %29
  %46 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %47 = load i32, i32* @I2C_IBDR, align 4
  %48 = call i32 @READ1(%struct.i2c_softc* %46, i32 %47)
  %49 = call i32 @DELAY(i32 1000)
  br label %50

50:                                               ; preds = %45, %6
  br label %51

51:                                               ; preds = %100, %50
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %110

56:                                               ; preds = %51
  %57 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %58 = call i32 @wait_for_icf(%struct.i2c_softc* %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %63 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %62, i32 0, i32 0
  %64 = call i32 @mtx_unlock(i32* %63)
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %7, align 4
  br label %115

66:                                               ; preds = %56
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 2
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %77 = load i32, i32* @I2C_IBCR, align 4
  %78 = load i32, i32* @IBCR_IBIE, align 4
  %79 = load i32, i32* @IBCR_MSSL, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @IBCR_NOACK, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @WRITE1(%struct.i2c_softc* %76, i32 %77, i32 %82)
  br label %84

84:                                               ; preds = %75, %72, %66
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %95 = load i32, i32* @I2C_IBCR, align 4
  %96 = load i32, i32* @IBCR_IBIE, align 4
  %97 = load i32, i32* @IBCR_NOACK, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @WRITE1(%struct.i2c_softc* %94, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %93, %90, %84
  %101 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %102 = load i32, i32* @I2C_IBDR, align 4
  %103 = call i32 @READ1(%struct.i2c_softc* %101, i32 %102)
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %9, align 8
  store i8 %104, i8* %105, align 1
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %51

110:                                              ; preds = %51
  %111 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %112 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %111, i32 0, i32 0
  %113 = call i32 @mtx_unlock(i32* %112)
  %114 = load i32, i32* @IIC_NOERR, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %110, %61
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @vf_i2c_dbg(%struct.i2c_softc*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @WRITE1(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @READ1(%struct.i2c_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @wait_for_icf(%struct.i2c_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
