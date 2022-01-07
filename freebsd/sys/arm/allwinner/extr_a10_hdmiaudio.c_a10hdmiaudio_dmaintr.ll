; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmiaudio.c_a10hdmiaudio_dmaintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmiaudio.c_a10hdmiaudio_dmaintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10hdmiaudio_chinfo = type { i32, i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @a10hdmiaudio_dmaintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10hdmiaudio_dmaintr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.a10hdmiaudio_chinfo*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.a10hdmiaudio_chinfo*
  store %struct.a10hdmiaudio_chinfo* %6, %struct.a10hdmiaudio_chinfo** %3, align 8
  %7 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %3, align 8
  %8 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @sndbuf_getsize(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %3, align 8
  %12 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %3, align 8
  %15 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 8
  %20 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %3, align 8
  %21 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %3, align 8
  %28 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %25, %1
  %32 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %3, align 8
  %33 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %3, align 8
  %38 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @chn_intr(i32 %39)
  %41 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %3, align 8
  %42 = call i32 @a10hdmiaudio_transfer(%struct.a10hdmiaudio_chinfo* %41)
  br label %43

43:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @a10hdmiaudio_transfer(%struct.a10hdmiaudio_chinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
