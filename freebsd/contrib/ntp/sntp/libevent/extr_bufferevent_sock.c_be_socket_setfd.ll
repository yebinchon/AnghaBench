; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_sock.c_be_socket_setfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_sock.c_be_socket_setfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32, i32, i32* }

@bufferevent_ops_socket = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@EV_FINALIZE = common dso_local global i32 0, align 4
@bufferevent_readcb = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@bufferevent_writecb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i32)* @be_socket_setfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_socket_setfd(%struct.bufferevent* %0, i32 %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %6 = call i32 @BEV_LOCK(%struct.bufferevent* %5)
  %7 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %8 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, @bufferevent_ops_socket
  %11 = zext i1 %10 to i32
  %12 = call i32 @EVUTIL_ASSERT(i32 %11)
  %13 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %14 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %13, i32 0, i32 3
  %15 = call i32 @event_del(i32* %14)
  %16 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %17 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %16, i32 0, i32 2
  %18 = call i32 @event_del(i32* %17)
  %19 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %20 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %19, i32 0, i32 3
  %21 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %22 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EV_READ, align 4
  %26 = load i32, i32* @EV_PERSIST, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @EV_FINALIZE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @bufferevent_readcb, align 4
  %31 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %32 = call i32 @event_assign(i32* %20, i32 %23, i32 %24, i32 %29, i32 %30, %struct.bufferevent* %31)
  %33 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %34 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %33, i32 0, i32 2
  %35 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %36 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @EV_WRITE, align 4
  %40 = load i32, i32* @EV_PERSIST, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @EV_FINALIZE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @bufferevent_writecb, align 4
  %45 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %46 = call i32 @event_assign(i32* %34, i32 %37, i32 %38, i32 %43, i32 %44, %struct.bufferevent* %45)
  %47 = load i32, i32* %4, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %2
  %50 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %51 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %52 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @bufferevent_enable(%struct.bufferevent* %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %2
  %56 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %57 = call i32 @BEV_UNLOCK(%struct.bufferevent* %56)
  ret void
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_assign(i32*, i32, i32, i32, i32, %struct.bufferevent*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
