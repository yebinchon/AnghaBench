; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_is_common_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_is_common_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.event_base = type { i32 }

@COMMON_TIMEOUT_MASK = common dso_local global i32 0, align 4
@COMMON_TIMEOUT_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*, %struct.event_base*)* @is_common_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_common_timeout(%struct.timeval* %0, %struct.event_base* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store %struct.event_base* %1, %struct.event_base** %5, align 8
  %7 = load %struct.timeval*, %struct.timeval** %4, align 8
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @COMMON_TIMEOUT_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @COMMON_TIMEOUT_MAGIC, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.timeval*, %struct.timeval** %4, align 8
  %17 = call i32 @COMMON_TIMEOUT_IDX(%struct.timeval* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.event_base*, %struct.event_base** %5, align 8
  %20 = getelementptr inbounds %struct.event_base, %struct.event_base* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %15, %14
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @COMMON_TIMEOUT_IDX(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
