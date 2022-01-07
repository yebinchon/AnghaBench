; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vrtc.c_update_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vrtc.c_update_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrtc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VRTC_BROKEN_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vrtc*)* @update_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_enabled(%struct.vrtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vrtc*, align 8
  store %struct.vrtc* %0, %struct.vrtc** %3, align 8
  %4 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %5 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @divider_enabled(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %13 = call i64 @rtc_halted(%struct.vrtc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %24

16:                                               ; preds = %11
  %17 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %18 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VRTC_BROKEN_TIME, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %24

23:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22, %15, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @divider_enabled(i32) #1

declare dso_local i64 @rtc_halted(%struct.vrtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
