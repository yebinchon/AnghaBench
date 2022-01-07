; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ssi.c_ssi_dma_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ssi.c_ssi_dma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { %struct.sc_info*, %struct.sc_chinfo* }
%struct.sc_info = type { i32, %struct.sdma_conf* }
%struct.sdma_conf = type { i64 }
%struct.sc_chinfo = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssi_dma_intr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc_pcminfo*, align 8
  %6 = alloca %struct.sdma_conf*, align 8
  %7 = alloca %struct.sc_chinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.sc_pcminfo*
  store %struct.sc_pcminfo* %11, %struct.sc_pcminfo** %5, align 8
  %12 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %13 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %12, i32 0, i32 1
  %14 = load %struct.sc_chinfo*, %struct.sc_chinfo** %13, align 8
  %15 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %14, i64 0
  store %struct.sc_chinfo* %15, %struct.sc_chinfo** %7, align 8
  %16 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %17 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %16, i32 0, i32 0
  %18 = load %struct.sc_info*, %struct.sc_info** %17, align 8
  store %struct.sc_info* %18, %struct.sc_info** %8, align 8
  %19 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 1
  %21 = load %struct.sdma_conf*, %struct.sdma_conf** %20, align 8
  store %struct.sdma_conf* %21, %struct.sdma_conf** %6, align 8
  %22 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %23 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @sndbuf_getsize(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.sdma_conf*, %struct.sdma_conf** %6, align 8
  %27 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %36 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %43 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %2
  %47 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %48 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %53 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @chn_intr(i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  ret i32 0
}

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
