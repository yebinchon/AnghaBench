; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_bufferevent_rate_limit_group_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_bufferevent_rate_limit_group_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_rate_limit_group = type { i64, i32, i32 }

@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufferevent_rate_limit_group_free(%struct.bufferevent_rate_limit_group* %0) #0 {
  %2 = alloca %struct.bufferevent_rate_limit_group*, align 8
  store %struct.bufferevent_rate_limit_group* %0, %struct.bufferevent_rate_limit_group** %2, align 8
  %3 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %2, align 8
  %4 = call i32 @LOCK_GROUP(%struct.bufferevent_rate_limit_group* %3)
  %5 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %2, align 8
  %6 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 0, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @EVUTIL_ASSERT(i32 %9)
  %11 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %2, align 8
  %12 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %11, i32 0, i32 2
  %13 = call i32 @event_del(i32* %12)
  %14 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %2, align 8
  %15 = call i32 @UNLOCK_GROUP(%struct.bufferevent_rate_limit_group* %14)
  %16 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %2, align 8
  %17 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %20 = call i32 @EVTHREAD_FREE_LOCK(i32 %18, i32 %19)
  %21 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %2, align 8
  %22 = call i32 @mm_free(%struct.bufferevent_rate_limit_group* %21)
  ret void
}

declare dso_local i32 @LOCK_GROUP(%struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @UNLOCK_GROUP(%struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @EVTHREAD_FREE_LOCK(i32, i32) #1

declare dso_local i32 @mm_free(%struct.bufferevent_rate_limit_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
