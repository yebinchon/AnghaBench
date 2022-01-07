; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_zlib.c_readcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_zlib.c_readcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.evbuffer = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@readcb_finished = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @readcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readcb(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = call %struct.evbuffer* @bufferevent_get_input(%struct.bufferevent* %6)
  %8 = call i32 @evbuffer_get_length(%struct.evbuffer* %7)
  %9 = icmp eq i32 %8, 8333
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %11, %struct.evbuffer** %5, align 8
  %12 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %13 = icmp ne %struct.evbuffer* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %17 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %18 = call i32 @bufferevent_read_buffer(%struct.bufferevent* %16, %struct.evbuffer* %17)
  %19 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %20 = load i32, i32* @EV_READ, align 4
  %21 = call i32 @bufferevent_disable(%struct.bufferevent* %19, i32 %20)
  %22 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %23 = call i32 @evbuffer_get_length(%struct.evbuffer* %22)
  %24 = icmp eq i32 %23, 8333
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = load i32, i32* @readcb_finished, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @readcb_finished, align 4
  br label %28

28:                                               ; preds = %25, %10
  %29 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %30 = call i32 @evbuffer_free(%struct.evbuffer* %29)
  br label %31

31:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local %struct.evbuffer* @bufferevent_get_input(%struct.bufferevent*) #1

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bufferevent_read_buffer(%struct.bufferevent*, %struct.evbuffer*) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
