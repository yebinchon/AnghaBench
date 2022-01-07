; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_sdma.c_load_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_sdma.c_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_softc = type { i8*, %struct.sdma_firmware_header*, i32 }
%struct.sdma_firmware_header = type { i64, i32 }
%struct.firmware = type { %struct.sdma_firmware_header* }

@.str = private unnamed_addr constant [8 x i8] c"sdma_fw\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Can't get firmware.\0A\00", align 1
@FW_HEADER_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Can't use firmware.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_softc*)* @load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_firmware(%struct.sdma_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdma_softc*, align 8
  %4 = alloca %struct.sdma_firmware_header*, align 8
  %5 = alloca %struct.firmware*, align 8
  store %struct.sdma_softc* %0, %struct.sdma_softc** %3, align 8
  %6 = call %struct.firmware* @firmware_get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.firmware* %6, %struct.firmware** %5, align 8
  %7 = load %struct.firmware*, %struct.firmware** %5, align 8
  %8 = icmp eq %struct.firmware* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.sdma_softc*, %struct.sdma_softc** %3, align 8
  %11 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.firmware*, %struct.firmware** %5, align 8
  %16 = getelementptr inbounds %struct.firmware, %struct.firmware* %15, i32 0, i32 0
  %17 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %16, align 8
  store %struct.sdma_firmware_header* %17, %struct.sdma_firmware_header** %4, align 8
  %18 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %4, align 8
  %19 = getelementptr inbounds %struct.sdma_firmware_header, %struct.sdma_firmware_header* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FW_HEADER_MAGIC, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.sdma_softc*, %struct.sdma_softc** %3, align 8
  %25 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %41

28:                                               ; preds = %14
  %29 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %4, align 8
  %30 = load %struct.sdma_softc*, %struct.sdma_softc** %3, align 8
  %31 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %30, i32 0, i32 1
  store %struct.sdma_firmware_header* %29, %struct.sdma_firmware_header** %31, align 8
  %32 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %4, align 8
  %33 = bitcast %struct.sdma_firmware_header* %32 to i8*
  %34 = load %struct.sdma_firmware_header*, %struct.sdma_firmware_header** %4, align 8
  %35 = getelementptr inbounds %struct.sdma_firmware_header, %struct.sdma_firmware_header* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = load %struct.sdma_softc*, %struct.sdma_softc** %3, align 8
  %40 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %28, %23, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.firmware* @firmware_get(i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
