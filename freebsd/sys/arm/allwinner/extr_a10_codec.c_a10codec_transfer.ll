; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10codec_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10codec_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10codec_chinfo = type { i64, %struct.TYPE_2__*, i64, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"DMA transfer failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a10codec_chinfo*)* @a10codec_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10codec_transfer(%struct.a10codec_chinfo* %0) #0 {
  %2 = alloca %struct.a10codec_chinfo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.a10codec_chinfo* %0, %struct.a10codec_chinfo** %2, align 8
  %6 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %7 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PCMDIR_PLAY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %13 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %16 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* %3, align 8
  %19 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %20 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %4, align 8
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %24 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %3, align 8
  %26 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %27 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %30 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %22, %11
  %34 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %35 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %38 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %43 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @SUNXI_DMA_TRANSFER(i32 %36, i32 %39, i64 %40, i64 %41, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %33
  %49 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %50 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %52 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %48, %33
  ret void
}

declare dso_local i32 @SUNXI_DMA_TRANSFER(i32, i32, i64, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
