; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_common_timeout_schedule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_common_timeout_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_timeout_list = type { i32 }
%struct.timeval = type { i32 }
%struct.event = type { %struct.timeval }

@MICROSECONDS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.common_timeout_list*, %struct.timeval*, %struct.event*)* @common_timeout_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_timeout_schedule(%struct.common_timeout_list* %0, %struct.timeval* %1, %struct.event* %2) #0 {
  %4 = alloca %struct.common_timeout_list*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.event*, align 8
  %7 = alloca %struct.timeval, align 4
  store %struct.common_timeout_list* %0, %struct.common_timeout_list** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  store %struct.event* %2, %struct.event** %6, align 8
  %8 = load %struct.event*, %struct.event** %6, align 8
  %9 = getelementptr inbounds %struct.event, %struct.event* %8, i32 0, i32 0
  %10 = bitcast %struct.timeval* %7 to i8*
  %11 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load i32, i32* @MICROSECONDS_MASK, align 4
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %12
  store i32 %15, i32* %13, align 4
  %16 = load %struct.common_timeout_list*, %struct.common_timeout_list** %4, align 8
  %17 = getelementptr inbounds %struct.common_timeout_list, %struct.common_timeout_list* %16, i32 0, i32 0
  %18 = call i32 @event_add_nolock_(i32* %17, %struct.timeval* %7, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @event_add_nolock_(i32*, %struct.timeval*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
