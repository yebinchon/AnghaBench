; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_init_generic_timeout_cbs_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_init_generic_timeout_cbs_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32 }

@EV_FINALIZE = common dso_local global i32 0, align 4
@bufferevent_generic_read_timeout_cb = common dso_local global i32 0, align 4
@bufferevent_generic_write_timeout_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufferevent_init_generic_timeout_cbs_(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %3 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %4 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %3, i32 0, i32 2
  %5 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %6 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @EV_FINALIZE, align 4
  %9 = load i32, i32* @bufferevent_generic_read_timeout_cb, align 4
  %10 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %11 = call i32 @event_assign(i32* %4, i32 %7, i32 -1, i32 %8, i32 %9, %struct.bufferevent* %10)
  %12 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %13 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %12, i32 0, i32 1
  %14 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %15 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EV_FINALIZE, align 4
  %18 = load i32, i32* @bufferevent_generic_write_timeout_cb, align 4
  %19 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %20 = call i32 @event_assign(i32* %13, i32 %16, i32 -1, i32 %17, i32 %18, %struct.bufferevent* %19)
  ret void
}

declare dso_local i32 @event_assign(i32*, i32, i32, i32, i32, %struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
