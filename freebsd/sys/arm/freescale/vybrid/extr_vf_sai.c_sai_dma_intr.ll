; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_sai.c_sai_dma_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_sai.c_sai_dma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { %struct.sc_info*, %struct.sc_chinfo* }
%struct.sc_info = type { i64, i64, %struct.tcd_conf* }
%struct.tcd_conf = type { i32, i32 }
%struct.sc_chinfo = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sai_dma_intr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc_pcminfo*, align 8
  %6 = alloca %struct.sc_chinfo*, align 8
  %7 = alloca %struct.sc_info*, align 8
  %8 = alloca %struct.tcd_conf*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.sc_pcminfo*
  store %struct.sc_pcminfo* %10, %struct.sc_pcminfo** %5, align 8
  %11 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %12 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %11, i32 0, i32 1
  %13 = load %struct.sc_chinfo*, %struct.sc_chinfo** %12, align 8
  %14 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %13, i64 0
  store %struct.sc_chinfo* %14, %struct.sc_chinfo** %6, align 8
  %15 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %16 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %15, i32 0, i32 0
  %17 = load %struct.sc_info*, %struct.sc_info** %16, align 8
  store %struct.sc_info* %17, %struct.sc_info** %7, align 8
  %18 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 2
  %20 = load %struct.tcd_conf*, %struct.tcd_conf** %19, align 8
  store %struct.tcd_conf* %20, %struct.tcd_conf** %8, align 8
  %21 = load %struct.tcd_conf*, %struct.tcd_conf** %8, align 8
  %22 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tcd_conf*, %struct.tcd_conf** %8, align 8
  %25 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %2
  %41 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %42 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %40, %2
  %49 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %50 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %55 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @chn_intr(i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  ret i32 0
}

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
