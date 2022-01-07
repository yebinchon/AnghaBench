; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_test-ratelim.c_echo_listenercb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_test-ratelim.c_echo_listenercb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evconnlistener = type { i32 }
%struct.sockaddr = type { i32 }
%struct.event_base = type { i32 }
%struct.bufferevent = type { i32 }
%struct.event = type { i32 }

@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@BEV_OPT_THREADSAFE = common dso_local global i32 0, align 4
@echo_readcb = common dso_local global i32 0, align 4
@echo_writecb = common dso_local global i32 0, align 4
@echo_eventcb = common dso_local global i32 0, align 4
@conn_bucket_cfg = common dso_local global i64 0, align 8
@EV_PERSIST = common dso_local global i32 0, align 4
@check_bucket_levels_cb = common dso_local global i32 0, align 4
@ms100_common = common dso_local global i32 0, align 4
@ratelim_group = common dso_local global i64 0, align 8
@n_echo_conns_open = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evconnlistener*, i32, %struct.sockaddr*, i32, i8*)* @echo_listenercb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @echo_listenercb(%struct.evconnlistener* %0, i32 %1, %struct.sockaddr* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.evconnlistener*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.event_base*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bufferevent*, align 8
  %14 = alloca %struct.event*, align 8
  store %struct.evconnlistener* %0, %struct.evconnlistener** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.event_base*
  store %struct.event_base* %16, %struct.event_base** %11, align 8
  %17 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %18 = load i32, i32* @BEV_OPT_THREADSAFE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.event_base*, %struct.event_base** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.bufferevent* @bufferevent_socket_new(%struct.event_base* %20, i32 %21, i32 %22)
  store %struct.bufferevent* %23, %struct.bufferevent** %13, align 8
  %24 = load %struct.bufferevent*, %struct.bufferevent** %13, align 8
  %25 = load i32, i32* @echo_readcb, align 4
  %26 = load i32, i32* @echo_writecb, align 4
  %27 = load i32, i32* @echo_eventcb, align 4
  %28 = call i32 @bufferevent_setcb(%struct.bufferevent* %24, i32 %25, i32 %26, i32 %27, i32* null)
  %29 = load i64, i64* @conn_bucket_cfg, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %5
  %32 = load %struct.event_base*, %struct.event_base** %11, align 8
  %33 = load i32, i32* @EV_PERSIST, align 4
  %34 = load i32, i32* @check_bucket_levels_cb, align 4
  %35 = load %struct.bufferevent*, %struct.bufferevent** %13, align 8
  %36 = call %struct.event* @event_new(%struct.event_base* %32, i32 -1, i32 %33, i32 %34, %struct.bufferevent* %35)
  store %struct.event* %36, %struct.event** %14, align 8
  %37 = load %struct.bufferevent*, %struct.bufferevent** %13, align 8
  %38 = load i64, i64* @conn_bucket_cfg, align 8
  %39 = call i32 @bufferevent_set_rate_limit(%struct.bufferevent* %37, i64 %38)
  %40 = load %struct.bufferevent*, %struct.bufferevent** %13, align 8
  %41 = call i32* @bufferevent_get_token_bucket_cfg(%struct.bufferevent* %40)
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.event*, %struct.event** %14, align 8
  %46 = load i32, i32* @ms100_common, align 4
  %47 = call i32 @event_add(%struct.event* %45, i32 %46)
  br label %48

48:                                               ; preds = %31, %5
  %49 = load i64, i64* @ratelim_group, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.bufferevent*, %struct.bufferevent** %13, align 8
  %53 = load i64, i64* @ratelim_group, align 8
  %54 = call i32 @bufferevent_add_to_rate_limit_group(%struct.bufferevent* %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* @n_echo_conns_open, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @n_echo_conns_open, align 4
  %58 = load %struct.bufferevent*, %struct.bufferevent** %13, align 8
  %59 = load i32, i32* @EV_READ, align 4
  %60 = load i32, i32* @EV_WRITE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @bufferevent_enable(%struct.bufferevent* %58, i32 %61)
  ret void
}

declare dso_local %struct.bufferevent* @bufferevent_socket_new(%struct.event_base*, i32, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32, i32, i32*) #1

declare dso_local %struct.event* @event_new(%struct.event_base*, i32, i32, i32, %struct.bufferevent*) #1

declare dso_local i32 @bufferevent_set_rate_limit(%struct.bufferevent*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @bufferevent_get_token_bucket_cfg(%struct.bufferevent*) #1

declare dso_local i32 @event_add(%struct.event*, i32) #1

declare dso_local i32 @bufferevent_add_to_rate_limit_group(%struct.bufferevent*, i64) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
