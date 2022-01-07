; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_bufferevent.c_wm_writecb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_bufferevent.c_wm_writecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @wm_writecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm_writecb(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %6 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @evbuffer_get_length(i32 %7)
  %9 = icmp sle i32 %8, 100
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %13 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @evbuffer_get_length(i32 %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %19 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %22 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @evbuffer_get_length(i32 %23)
  %25 = call i32 @evbuffer_drain(i32 %20, i32 %24)
  %26 = load i32, i32* @test_ok, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @test_ok, align 4
  br label %28

28:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @evbuffer_get_length(i32) #1

declare dso_local i32 @evbuffer_drain(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
