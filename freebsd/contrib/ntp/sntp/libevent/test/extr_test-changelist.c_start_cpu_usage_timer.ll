; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_test-changelist.c_start_cpu_usage_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_test-changelist.c_start_cpu_usage_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_usage_timer = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_usage_timer*)* @start_cpu_usage_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_cpu_usage_timer(%struct.cpu_usage_timer* %0) #0 {
  %2 = alloca %struct.cpu_usage_timer*, align 8
  store %struct.cpu_usage_timer* %0, %struct.cpu_usage_timer** %2, align 8
  %3 = call i32 (...) @clock()
  %4 = load %struct.cpu_usage_timer*, %struct.cpu_usage_timer** %2, align 8
  %5 = getelementptr inbounds %struct.cpu_usage_timer, %struct.cpu_usage_timer* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 4
  %6 = load %struct.cpu_usage_timer*, %struct.cpu_usage_timer** %2, align 8
  %7 = getelementptr inbounds %struct.cpu_usage_timer, %struct.cpu_usage_timer* %6, i32 0, i32 0
  %8 = call i32 @evutil_gettimeofday(i32* %7, i32* null)
  ret void
}

declare dso_local i32 @clock(...) #1

declare dso_local i32 @evutil_gettimeofday(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
