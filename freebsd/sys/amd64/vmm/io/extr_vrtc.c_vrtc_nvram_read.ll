; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vrtc.c_vrtc_nvram_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vrtc.c_vrtc_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vrtc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTC_CENTURY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vrtc_nvram_read(%struct.vm* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vrtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.vm* %0, %struct.vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp uge i64 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %48

20:                                               ; preds = %14
  %21 = load %struct.vm*, %struct.vm** %5, align 8
  %22 = call %struct.vrtc* @vm_rtc(%struct.vm* %21)
  store %struct.vrtc* %22, %struct.vrtc** %8, align 8
  %23 = load %struct.vrtc*, %struct.vrtc** %8, align 8
  %24 = call i32 @VRTC_LOCK(%struct.vrtc* %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @RTC_CENTURY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %20
  %32 = load %struct.vrtc*, %struct.vrtc** %8, align 8
  %33 = call i32 @vrtc_curtime(%struct.vrtc* %32, i32* %9)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.vrtc*, %struct.vrtc** %8, align 8
  %36 = call i32 @secs_to_rtc(i32 %34, %struct.vrtc* %35, i32 0)
  br label %37

37:                                               ; preds = %31, %27
  %38 = load %struct.vrtc*, %struct.vrtc** %8, align 8
  %39 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %38, i32 0, i32 0
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.vrtc*, %struct.vrtc** %8, align 8
  %47 = call i32 @VRTC_UNLOCK(%struct.vrtc* %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %37, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.vrtc* @vm_rtc(%struct.vm*) #1

declare dso_local i32 @VRTC_LOCK(%struct.vrtc*) #1

declare dso_local i32 @vrtc_curtime(%struct.vrtc*, i32*) #1

declare dso_local i32 @secs_to_rtc(i32, %struct.vrtc*, i32) #1

declare dso_local i32 @VRTC_UNLOCK(%struct.vrtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
