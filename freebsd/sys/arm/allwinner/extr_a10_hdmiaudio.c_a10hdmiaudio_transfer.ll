; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmiaudio.c_a10hdmiaudio_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmiaudio.c_a10hdmiaudio_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10hdmiaudio_chinfo = type { %struct.TYPE_2__*, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"DMA transfer failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a10hdmiaudio_chinfo*)* @a10hdmiaudio_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10hdmiaudio_transfer(%struct.a10hdmiaudio_chinfo* %0) #0 {
  %2 = alloca %struct.a10hdmiaudio_chinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.a10hdmiaudio_chinfo* %0, %struct.a10hdmiaudio_chinfo** %2, align 8
  %4 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %2, align 8
  %5 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %2, align 8
  %8 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %2, align 8
  %11 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %2, align 8
  %14 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load i32, i32* @TX_FIFO, align 4
  %18 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %2, align 8
  %19 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @SUNXI_DMA_TRANSFER(i32 %6, i32 %9, i64 %16, i32 %17, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %2, align 8
  %26 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %2, align 8
  %28 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @SUNXI_DMA_TRANSFER(i32, i32, i64, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
