; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp8xx_softc = type { i32 }
%struct.iic_msg = type { i32, i32*, i8*, i32 }

@IIC_M_WR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @axp8xx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp8xx_write(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.axp8xx_softc*, align 8
  %8 = alloca [2 x %struct.iic_msg], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.axp8xx_softc* @device_get_softc(i32 %9)
  store %struct.axp8xx_softc* %10, %struct.axp8xx_softc** %7, align 8
  %11 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %7, align 8
  %12 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 0
  %15 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load i8*, i8** @IIC_M_WR, align 8
  %17 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 0
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 16
  %19 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 0
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 0
  store i32 1, i32* %20, align 16
  %21 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 0
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 1
  store i32* %5, i32** %22, align 8
  %23 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %7, align 8
  %24 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 1
  %27 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** @IIC_M_WR, align 8
  %29 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 1
  %30 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 16
  %31 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 1
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %31, i32 0, i32 0
  store i32 1, i32* %32, align 16
  %33 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 1
  %34 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %33, i32 0, i32 1
  store i32* %6, i32** %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 0
  %37 = call i32 @iicbus_transfer(i32 %35, %struct.iic_msg* %36, i32 2)
  ret i32 %37
}

declare dso_local %struct.axp8xx_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
