; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_weakrand_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_weakrand_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_weakrand_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_weakrand_(%struct.evutil_weakrand_state* %0) #0 {
  %2 = alloca %struct.evutil_weakrand_state*, align 8
  store %struct.evutil_weakrand_state* %0, %struct.evutil_weakrand_state** %2, align 8
  %3 = load %struct.evutil_weakrand_state*, %struct.evutil_weakrand_state** %2, align 8
  %4 = getelementptr inbounds %struct.evutil_weakrand_state, %struct.evutil_weakrand_state* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 %5, 1103515245
  %7 = add nsw i32 %6, 12345
  %8 = and i32 %7, 2147483647
  %9 = load %struct.evutil_weakrand_state*, %struct.evutil_weakrand_state** %2, align 8
  %10 = getelementptr inbounds %struct.evutil_weakrand_state, %struct.evutil_weakrand_state* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.evutil_weakrand_state*, %struct.evutil_weakrand_state** %2, align 8
  %12 = getelementptr inbounds %struct.evutil_weakrand_state, %struct.evutil_weakrand_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
