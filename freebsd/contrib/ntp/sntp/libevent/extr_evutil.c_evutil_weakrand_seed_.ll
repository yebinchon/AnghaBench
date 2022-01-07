; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_weakrand_seed_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_weakrand_seed_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_weakrand_state = type { i64 }
%struct.timeval = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @evutil_weakrand_seed_(%struct.evutil_weakrand_state* %0, i64 %1) #0 {
  %3 = alloca %struct.evutil_weakrand_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timeval, align 8
  store %struct.evutil_weakrand_state* %0, %struct.evutil_weakrand_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = call i32 @evutil_gettimeofday(%struct.timeval* %5, i32* null)
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %11, %13
  store i64 %14, i64* %4, align 8
  %15 = call i64 (...) @getpid()
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %8, %2
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.evutil_weakrand_state*, %struct.evutil_weakrand_state** %3, align 8
  %21 = getelementptr inbounds %struct.evutil_weakrand_state, %struct.evutil_weakrand_state* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %4, align 8
  ret i64 %22
}

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
