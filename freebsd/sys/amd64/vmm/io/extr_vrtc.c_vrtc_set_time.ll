; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vrtc.c_vrtc_set_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vrtc.c_vrtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vrtc = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Error %d setting RTC time to %#lx\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"RTC time set to %#lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vrtc_set_time(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vrtc*, align 8
  %6 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vm*, %struct.vm** %3, align 8
  %8 = call %struct.vrtc* @vm_rtc(%struct.vm* %7)
  store %struct.vrtc* %8, %struct.vrtc** %5, align 8
  %9 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %10 = call i32 @VRTC_LOCK(%struct.vrtc* %9)
  %11 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (...) @sbinuptime()
  %14 = call i32 @vrtc_time_update(%struct.vrtc* %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %16 = call i32 @VRTC_UNLOCK(%struct.vrtc* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %21 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @VM_CTR2(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %28 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @VM_CTR1(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local %struct.vrtc* @vm_rtc(%struct.vm*) #1

declare dso_local i32 @VRTC_LOCK(%struct.vrtc*) #1

declare dso_local i32 @vrtc_time_update(%struct.vrtc*, i32, i32) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @VRTC_UNLOCK(%struct.vrtc*) #1

declare dso_local i32 @VM_CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @VM_CTR1(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
