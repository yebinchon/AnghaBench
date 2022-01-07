; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_thread.c_register_events_subthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_thread.c_register_events_subthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32, i32 }

@time_events = common dso_local global i32* null, align 8
@EV_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @register_events_subthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_events_subthread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.timeval, align 4
  store i8* %0, i8** %3, align 8
  %5 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 12, i1 false)
  %6 = call i32 @SLEEP_MS(i32 100)
  %7 = load i32*, i32** @time_events, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* @EV_TIMEOUT, align 4
  %10 = call i32 @event_active(i32* %8, i32 %9, i32 1)
  %11 = call i32 @SLEEP_MS(i32 100)
  %12 = load i32*, i32** @time_events, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* @EV_TIMEOUT, align 4
  %15 = call i32 @event_active(i32* %13, i32 %14, i32 1)
  %16 = call i32 @SLEEP_MS(i32 100)
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 100000, i32* %17, align 4
  %18 = load i32*, i32** @time_events, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = call i32 @event_add(i32* %19, %struct.timeval* %4)
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 150000, i32* %21, align 4
  %22 = load i32*, i32** @time_events, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = call i32 @event_add(i32* %23, %struct.timeval* %4)
  %25 = call i32 @SLEEP_MS(i32 200)
  %26 = load i32*, i32** @time_events, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* @EV_TIMEOUT, align 4
  %29 = call i32 @event_active(i32* %27, i32 %28, i32 1)
  %30 = call i32 (...) @THREAD_RETURN()
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SLEEP_MS(i32) #2

declare dso_local i32 @event_active(i32*, i32, i32) #2

declare dso_local i32 @event_add(i32*, %struct.timeval*) #2

declare dso_local i32 @THREAD_RETURN(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
