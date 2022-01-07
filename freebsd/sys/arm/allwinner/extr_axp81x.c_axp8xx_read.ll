; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp8xx_softc = type { i32 }
%struct.iic_msg = type { i32, i32*, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @axp8xx_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp8xx_read(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.axp8xx_softc*, align 8
  %10 = alloca [2 x %struct.iic_msg], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.axp8xx_softc* @device_get_softc(i32 %11)
  store %struct.axp8xx_softc* %12, %struct.axp8xx_softc** %9, align 8
  %13 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %9, align 8
  %14 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %17 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @IIC_M_WR, align 4
  %19 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 16
  %21 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 0
  store i32 1, i32* %22, align 16
  %23 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 1
  store i32* %6, i32** %24, align 8
  %25 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %9, align 8
  %26 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 1
  %29 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @IIC_M_RD, align 4
  %31 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 1
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 1
  %35 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 1
  %38 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %41 = call i32 @iicbus_transfer(i32 %39, %struct.iic_msg* %40, i32 2)
  ret i32 %41
}

declare dso_local %struct.axp8xx_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
