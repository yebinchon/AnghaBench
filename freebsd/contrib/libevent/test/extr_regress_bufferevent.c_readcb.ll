; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_bufferevent.c_readcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_bufferevent.c_readcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { %struct.evbuffer* }
%struct.evbuffer = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @readcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readcb(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %6, i32 0, i32 0
  %8 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %9 = call i32 @evbuffer_get_length(%struct.evbuffer* %8)
  %10 = icmp eq i32 %9, 8333
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %12, %struct.evbuffer** %5, align 8
  %13 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %14 = icmp ne %struct.evbuffer* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %18 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %19 = call i32 @bufferevent_read_buffer(%struct.bufferevent* %17, %struct.evbuffer* %18)
  %20 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %21 = load i32, i32* @EV_READ, align 4
  %22 = call i32 @bufferevent_disable(%struct.bufferevent* %20, i32 %21)
  %23 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %24 = call i32 @evbuffer_get_length(%struct.evbuffer* %23)
  %25 = icmp eq i32 %24, 8333
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = load i32, i32* @test_ok, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @test_ok, align 4
  br label %29

29:                                               ; preds = %26, %11
  %30 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %31 = call i32 @evbuffer_free(%struct.evbuffer* %30)
  br label %32

32:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

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
