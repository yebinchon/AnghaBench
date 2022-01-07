; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_le-proxy.c_readcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_le-proxy.c_readcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.evbuffer = type { i32 }

@MAX_OUTPUT = common dso_local global i32 0, align 4
@drained_writecb = common dso_local global i32 0, align 4
@eventcb = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @readcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readcb(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca %struct.evbuffer*, align 8
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca i64, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bufferevent*
  store %struct.bufferevent* %10, %struct.bufferevent** %5, align 8
  %11 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %12 = call %struct.evbuffer* @bufferevent_get_input(%struct.bufferevent* %11)
  store %struct.evbuffer* %12, %struct.evbuffer** %6, align 8
  %13 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %14 = call i32 @evbuffer_get_length(%struct.evbuffer* %13)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %17 = icmp ne %struct.bufferevent* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @evbuffer_drain(%struct.evbuffer* %19, i64 %20)
  br label %47

22:                                               ; preds = %2
  %23 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %24 = call %struct.evbuffer* @bufferevent_get_output(%struct.bufferevent* %23)
  store %struct.evbuffer* %24, %struct.evbuffer** %7, align 8
  %25 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %26 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %27 = call i32 @evbuffer_add_buffer(%struct.evbuffer* %25, %struct.evbuffer* %26)
  %28 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %29 = call i32 @evbuffer_get_length(%struct.evbuffer* %28)
  %30 = load i32, i32* @MAX_OUTPUT, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %22
  %33 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %34 = load i32, i32* @drained_writecb, align 4
  %35 = load i32, i32* @eventcb, align 4
  %36 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %37 = call i32 @bufferevent_setcb(%struct.bufferevent* %33, void (%struct.bufferevent*, i8*)* @readcb, i32 %34, i32 %35, %struct.bufferevent* %36)
  %38 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %39 = load i32, i32* @EV_WRITE, align 4
  %40 = load i32, i32* @MAX_OUTPUT, align 4
  %41 = sdiv i32 %40, 2
  %42 = load i32, i32* @MAX_OUTPUT, align 4
  %43 = call i32 @bufferevent_setwatermark(%struct.bufferevent* %38, i32 %39, i32 %41, i32 %42)
  %44 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %45 = load i32, i32* @EV_READ, align 4
  %46 = call i32 @bufferevent_disable(%struct.bufferevent* %44, i32 %45)
  br label %47

47:                                               ; preds = %18, %32, %22
  ret void
}

declare dso_local %struct.evbuffer* @bufferevent_get_input(%struct.bufferevent*) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i64) #1

declare dso_local %struct.evbuffer* @bufferevent_get_output(%struct.bufferevent*) #1

declare dso_local i32 @evbuffer_add_buffer(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, void (%struct.bufferevent*, i8*)*, i32, i32, %struct.bufferevent*) #1

declare dso_local i32 @bufferevent_setwatermark(%struct.bufferevent*, i32, i32, i32) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
