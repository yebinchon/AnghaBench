; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_get_common_timeout_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_get_common_timeout_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_timeout_list = type { i32 }
%struct.event_base = type { %struct.common_timeout_list** }
%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.common_timeout_list* (%struct.event_base*, %struct.timeval*)* @get_common_timeout_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.common_timeout_list* @get_common_timeout_list(%struct.event_base* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.timeval*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %5 = load %struct.event_base*, %struct.event_base** %3, align 8
  %6 = getelementptr inbounds %struct.event_base, %struct.event_base* %5, i32 0, i32 0
  %7 = load %struct.common_timeout_list**, %struct.common_timeout_list*** %6, align 8
  %8 = load %struct.timeval*, %struct.timeval** %4, align 8
  %9 = call i64 @COMMON_TIMEOUT_IDX(%struct.timeval* %8)
  %10 = getelementptr inbounds %struct.common_timeout_list*, %struct.common_timeout_list** %7, i64 %9
  %11 = load %struct.common_timeout_list*, %struct.common_timeout_list** %10, align 8
  ret %struct.common_timeout_list* %11
}

declare dso_local i64 @COMMON_TIMEOUT_IDX(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
