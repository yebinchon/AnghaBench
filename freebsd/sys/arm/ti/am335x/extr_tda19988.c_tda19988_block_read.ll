; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_block_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_block_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda19988_softc = type { i64, i32, i32 }
%struct.iic_msg = type { i32, i32*, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"tda19988_block_read failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda19988_softc*, i32, i32*, i32)* @tda19988_block_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda19988_block_read(%struct.tda19988_softc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.tda19988_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.iic_msg], align 16
  store %struct.tda19988_softc* %0, %struct.tda19988_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 0
  %13 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 0
  %14 = load %struct.tda19988_softc*, %struct.tda19988_softc** %5, align 8
  %15 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 8
  %17 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 1
  %18 = load i32, i32* @IIC_M_WR, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %17, align 8
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 2
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 3
  %23 = ptrtoint i32* %9 to i32
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i64 1
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 0
  %26 = load %struct.tda19988_softc*, %struct.tda19988_softc** %5, align 8
  %27 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 8
  %29 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 1
  %30 = load i32, i32* @IIC_M_RD, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %29, align 8
  %33 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 2
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 3
  %36 = load i32*, i32** %7, align 8
  %37 = ptrtoint i32* %36 to i32
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @REGADDR(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.tda19988_softc*, %struct.tda19988_softc** %5, align 8
  %41 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @REGPAGE(i32 %43)
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %4
  %47 = load %struct.tda19988_softc*, %struct.tda19988_softc** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @REGPAGE(i32 %48)
  %50 = call i32 @tda19988_set_page(%struct.tda19988_softc* %47, i64 %49)
  br label %51

51:                                               ; preds = %46, %4
  %52 = load %struct.tda19988_softc*, %struct.tda19988_softc** %5, align 8
  %53 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 0
  %56 = call i32 @iicbus_transfer(i32 %54, %struct.iic_msg* %55, i32 2)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.tda19988_softc*, %struct.tda19988_softc** %5, align 8
  %61 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %51
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local i32 @REGADDR(i32) #1

declare dso_local i64 @REGPAGE(i32) #1

declare dso_local i32 @tda19988_set_page(%struct.tda19988_softc*, i64) #1

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
