; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_sai.c_setup_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_sai.c_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { %struct.sc_info* }
%struct.sc_info = type { %struct.tcd_conf*, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.tcd_conf = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, %struct.sc_pcminfo*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.tcd_conf*)* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@sai_dma_intr = common dso_local global i32 0, align 4
@I2S_TDR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_pcminfo*)* @setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_dma(%struct.sc_pcminfo* %0) #0 {
  %2 = alloca %struct.sc_pcminfo*, align 8
  %3 = alloca %struct.tcd_conf*, align 8
  %4 = alloca %struct.sc_info*, align 8
  store %struct.sc_pcminfo* %0, %struct.sc_pcminfo** %2, align 8
  %5 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %2, align 8
  %6 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %5, i32 0, i32 0
  %7 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  store %struct.sc_info* %7, %struct.sc_info** %4, align 8
  %8 = load i32, i32* @M_DEVBUF, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.tcd_conf* @malloc(i32 96, i32 %8, i32 %11)
  store %struct.tcd_conf* %12, %struct.tcd_conf** %3, align 8
  %13 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %14 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %17 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %16, i32 0, i32 15
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @sai_dma_intr, align 4
  %19 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %20 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %19, i32 0, i32 14
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %2, align 8
  %22 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %23 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %22, i32 0, i32 13
  store %struct.sc_pcminfo* %21, %struct.sc_pcminfo** %23, align 8
  %24 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %25 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %28 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %27, i32 0, i32 12
  store i32 %26, i32* %28, align 8
  %29 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rman_get_start(i32 %33)
  %35 = load i64, i64* @I2S_TDR0, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %38 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %37, i32 0, i32 11
  store i64 %36, i64* %38, align 8
  %39 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %40 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %39, i32 0, i32 0
  store i32 64, i32* %40, align 8
  %41 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %42 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %41, i32 0, i32 1
  store i32 512, i32* %42, align 4
  %43 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %44 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %43, i32 0, i32 2
  store i32 17, i32* %44, align 8
  %45 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %46 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %45, i32 0, i32 10
  store i64 0, i64* %46, align 8
  %47 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %48 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %47, i32 0, i32 9
  store i64 0, i64* %48, align 8
  %49 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %50 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %49, i32 0, i32 3
  store i32 4, i32* %50, align 4
  %51 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %52 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %51, i32 0, i32 8
  store i64 0, i64* %52, align 8
  %53 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %54 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %53, i32 0, i32 4
  store i32 2, i32* %54, align 8
  %55 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %56 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %55, i32 0, i32 5
  store i32 2, i32* %56, align 4
  %57 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %58 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %57, i32 0, i32 7
  store i64 0, i64* %58, align 8
  %59 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %60 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %59, i32 0, i32 6
  store i64 0, i64* %60, align 8
  %61 = load %struct.tcd_conf*, %struct.tcd_conf** %3, align 8
  %62 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %63 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %62, i32 0, i32 0
  store %struct.tcd_conf* %61, %struct.tcd_conf** %63, align 8
  %64 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_2__*, %struct.tcd_conf*)*, i32 (%struct.TYPE_2__*, %struct.tcd_conf*)** %67, align 8
  %69 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %70 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %73 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %72, i32 0, i32 0
  %74 = load %struct.tcd_conf*, %struct.tcd_conf** %73, align 8
  %75 = call i32 %68(%struct.TYPE_2__* %71, %struct.tcd_conf* %74)
  ret i32 0
}

declare dso_local %struct.tcd_conf* @malloc(i32, i32, i32) #1

declare dso_local i64 @rman_get_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
