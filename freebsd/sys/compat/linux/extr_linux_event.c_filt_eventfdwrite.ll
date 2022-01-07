; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_filt_eventfdwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_filt_eventfdwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { %struct.eventfd* }
%struct.eventfd = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @filt_eventfdwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_eventfdwrite(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.eventfd*, align 8
  %6 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.knote*, %struct.knote** %3, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 0
  %9 = load %struct.eventfd*, %struct.eventfd** %8, align 8
  store %struct.eventfd* %9, %struct.eventfd** %5, align 8
  %10 = load %struct.eventfd*, %struct.eventfd** %5, align 8
  %11 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %10, i32 0, i32 1
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* %11, i32 %12)
  %14 = load i32, i32* @UINT64_MAX, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.eventfd*, %struct.eventfd** %5, align 8
  %17 = getelementptr inbounds %struct.eventfd, %struct.eventfd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
