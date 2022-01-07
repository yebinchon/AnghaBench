; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_test-ratelim.c_echo_writecb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_test-ratelim.c_echo_writecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.evbuffer = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @echo_writecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @echo_writecb(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = call %struct.evbuffer* @bufferevent_get_output(%struct.bufferevent* %6)
  store %struct.evbuffer* %7, %struct.evbuffer** %5, align 8
  %8 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %9 = call i32 @evbuffer_get_length(%struct.evbuffer* %8)
  %10 = icmp slt i32 %9, 512000
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %13 = load i32, i32* @EV_READ, align 4
  %14 = call i32 @bufferevent_enable(%struct.bufferevent* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.evbuffer* @bufferevent_get_output(%struct.bufferevent*) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
