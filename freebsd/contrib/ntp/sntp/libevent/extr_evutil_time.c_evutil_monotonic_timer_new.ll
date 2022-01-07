; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil_time.c_evutil_monotonic_timer_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil_time.c_evutil_monotonic_timer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_monotonic_timer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evutil_monotonic_timer* @evutil_monotonic_timer_new() #0 {
  %1 = alloca %struct.evutil_monotonic_timer*, align 8
  store %struct.evutil_monotonic_timer* null, %struct.evutil_monotonic_timer** %1, align 8
  %2 = call %struct.evutil_monotonic_timer* @mm_malloc(i32 4)
  store %struct.evutil_monotonic_timer* %2, %struct.evutil_monotonic_timer** %1, align 8
  %3 = load %struct.evutil_monotonic_timer*, %struct.evutil_monotonic_timer** %1, align 8
  %4 = icmp ne %struct.evutil_monotonic_timer* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %9

6:                                                ; preds = %0
  %7 = load %struct.evutil_monotonic_timer*, %struct.evutil_monotonic_timer** %1, align 8
  %8 = call i32 @memset(%struct.evutil_monotonic_timer* %7, i32 0, i32 4)
  br label %9

9:                                                ; preds = %6, %5
  %10 = load %struct.evutil_monotonic_timer*, %struct.evutil_monotonic_timer** %1, align 8
  ret %struct.evutil_monotonic_timer* %10
}

declare dso_local %struct.evutil_monotonic_timer* @mm_malloc(i32) #1

declare dso_local i32 @memset(%struct.evutil_monotonic_timer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
