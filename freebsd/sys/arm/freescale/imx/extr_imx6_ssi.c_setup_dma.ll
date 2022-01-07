; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ssi.c_setup_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ssi.c_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { %struct.sc_info*, %struct.sc_chinfo* }
%struct.sc_info = type { i32, i32, i32*, i32, %struct.sdma_conf* }
%struct.sdma_conf = type { i32, i32, i32, i32, i32, i64, i32, %struct.sc_pcminfo*, i32 }
%struct.sc_chinfo = type { i32 }

@ssi_dma_intr = common dso_local global i32 0, align 4
@SSI_STX0 = common dso_local global i64 0, align 8
@AFMT_16BIT = common dso_local global i32 0, align 4
@CMD_2BYTES = common dso_local global i32 0, align 4
@AFMT_24BIT = common dso_local global i32 0, align 4
@CMD_3BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Unknown format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_pcminfo*)* @setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_dma(%struct.sc_pcminfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_pcminfo*, align 8
  %4 = alloca %struct.sdma_conf*, align 8
  %5 = alloca %struct.sc_chinfo*, align 8
  %6 = alloca %struct.sc_info*, align 8
  %7 = alloca i32, align 4
  store %struct.sc_pcminfo* %0, %struct.sc_pcminfo** %3, align 8
  %8 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %3, align 8
  %9 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %8, i32 0, i32 1
  %10 = load %struct.sc_chinfo*, %struct.sc_chinfo** %9, align 8
  %11 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %10, i64 0
  store %struct.sc_chinfo* %11, %struct.sc_chinfo** %5, align 8
  %12 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %3, align 8
  %13 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %12, i32 0, i32 0
  %14 = load %struct.sc_info*, %struct.sc_info** %13, align 8
  store %struct.sc_info* %14, %struct.sc_info** %6, align 8
  %15 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %16 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %15, i32 0, i32 4
  %17 = load %struct.sdma_conf*, %struct.sdma_conf** %16, align 8
  store %struct.sdma_conf* %17, %struct.sdma_conf** %4, align 8
  %18 = load i32, i32* @ssi_dma_intr, align 4
  %19 = load %struct.sdma_conf*, %struct.sdma_conf** %4, align 8
  %20 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %3, align 8
  %22 = load %struct.sdma_conf*, %struct.sdma_conf** %4, align 8
  %23 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %22, i32 0, i32 7
  store %struct.sc_pcminfo* %21, %struct.sc_pcminfo** %23, align 8
  %24 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %25 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sdma_conf*, %struct.sdma_conf** %4, align 8
  %28 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rman_get_start(i32 %33)
  %35 = load i64, i64* @SSI_STX0, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.sdma_conf*, %struct.sdma_conf** %4, align 8
  %38 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %37, i32 0, i32 5
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %40 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sdma_conf*, %struct.sdma_conf** %4, align 8
  %43 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %45 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sndbuf_getblksz(i32 %46)
  %48 = load %struct.sdma_conf*, %struct.sdma_conf** %4, align 8
  %49 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %51 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sndbuf_getblkcnt(i32 %52)
  %54 = load %struct.sdma_conf*, %struct.sdma_conf** %4, align 8
  %55 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %57 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sndbuf_getfmt(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @AFMT_16BIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %1
  %65 = load %struct.sdma_conf*, %struct.sdma_conf** %4, align 8
  %66 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %65, i32 0, i32 0
  store i32 16, i32* %66, align 8
  %67 = load i32, i32* @CMD_2BYTES, align 4
  %68 = load %struct.sdma_conf*, %struct.sdma_conf** %4, align 8
  %69 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %87

70:                                               ; preds = %1
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @AFMT_24BIT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.sdma_conf*, %struct.sdma_conf** %4, align 8
  %77 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %76, i32 0, i32 0
  store i32 24, i32* %77, align 8
  %78 = load i32, i32* @CMD_3BYTES, align 4
  %79 = load %struct.sdma_conf*, %struct.sdma_conf** %4, align 8
  %80 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %86

81:                                               ; preds = %70
  %82 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %83 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @device_printf(i32 %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %88

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %64
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @rman_get_start(i32) #1

declare dso_local i32 @sndbuf_getblksz(i32) #1

declare dso_local i32 @sndbuf_getblkcnt(i32) #1

declare dso_local i32 @sndbuf_getfmt(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
