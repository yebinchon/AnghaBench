; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i32, i32, i32, i32, i32, i32 }
%struct.rk_spi_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @rk_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_spi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_command*, align 8
  %8 = alloca %struct.rk_spi_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.spi_command* %2, %struct.spi_command** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.rk_spi_softc* @device_get_softc(i32 %13)
  store %struct.rk_spi_softc* %14, %struct.rk_spi_softc** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @spibus_get_cs(i32 %15, i32* %9)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @spibus_get_clock(i32 %17, i32* %11)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @spibus_get_mode(i32 %19, i32* %10)
  %21 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %8, align 8
  %22 = call i32 @RK_SPI_LOCK(%struct.rk_spi_softc* %21)
  %23 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @rk_spi_hw_setup(%struct.rk_spi_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %8, align 8
  %28 = call i32 @rk_spi_enable_chip(%struct.rk_spi_softc* %27, i32 1)
  %29 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @rk_spi_set_cs(%struct.rk_spi_softc* %29, i32 %30, i32 1)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %8, align 8
  %36 = call i32 @rk_spi_enable_chip(%struct.rk_spi_softc* %35, i32 0)
  %37 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %8, align 8
  %38 = call i32 @RK_SPI_UNLOCK(%struct.rk_spi_softc* %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %4, align 4
  br label %86

40:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  %41 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %42 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %8, align 8
  %47 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %48 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %51 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %54 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rk_spi_xfer_buf(%struct.rk_spi_softc* %46, i32 %49, i32 %52, i32 %55)
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %45, %40
  %58 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %59 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %8, align 8
  %67 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %68 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %71 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %74 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @rk_spi_xfer_buf(%struct.rk_spi_softc* %66, i32 %69, i32 %72, i32 %75)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %65, %62, %57
  %78 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @rk_spi_set_cs(%struct.rk_spi_softc* %78, i32 %79, i32 0)
  %81 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %8, align 8
  %82 = call i32 @rk_spi_enable_chip(%struct.rk_spi_softc* %81, i32 0)
  %83 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %8, align 8
  %84 = call i32 @RK_SPI_UNLOCK(%struct.rk_spi_softc* %83)
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %77, %34
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.rk_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @spibus_get_cs(i32, i32*) #1

declare dso_local i32 @spibus_get_clock(i32, i32*) #1

declare dso_local i32 @spibus_get_mode(i32, i32*) #1

declare dso_local i32 @RK_SPI_LOCK(%struct.rk_spi_softc*) #1

declare dso_local i32 @rk_spi_hw_setup(%struct.rk_spi_softc*, i32, i32) #1

declare dso_local i32 @rk_spi_enable_chip(%struct.rk_spi_softc*, i32) #1

declare dso_local i32 @rk_spi_set_cs(%struct.rk_spi_softc*, i32, i32) #1

declare dso_local i32 @RK_SPI_UNLOCK(%struct.rk_spi_softc*) #1

declare dso_local i32 @rk_spi_xfer_buf(%struct.rk_spi_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
