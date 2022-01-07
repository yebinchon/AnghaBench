; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_get_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_get_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_get_priority(%struct.bufferevent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  %4 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %5 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %4, i32 0, i32 1
  %6 = call i64 @event_initialized(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %10 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %9, i32 0, i32 1
  %11 = call i32 @event_get_priority(i32* %10)
  store i32 %11, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %14 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @event_base_get_npriorities(i32 %15)
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %12, %8
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @event_get_priority(i32*) #1

declare dso_local i32 @event_base_get_npriorities(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
