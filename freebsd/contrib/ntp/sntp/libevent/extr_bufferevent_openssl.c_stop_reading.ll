; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_stop_reading.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_stop_reading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.bufferevent = type { i32 }

@BEV_SUSPEND_FILT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent_openssl*)* @stop_reading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_reading(%struct.bufferevent_openssl* %0) #0 {
  %2 = alloca %struct.bufferevent_openssl*, align 8
  %3 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %2, align 8
  %4 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %5 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %11 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %16 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @BEV_SUSPEND_FILT_READ, align 4
  %19 = call i32 @bufferevent_suspend_read_(i64 %17, i32 %18)
  br label %27

20:                                               ; preds = %9
  %21 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %22 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.bufferevent* %23, %struct.bufferevent** %3, align 8
  %24 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %25 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %24, i32 0, i32 0
  %26 = call i32 @event_del(i32* %25)
  br label %27

27:                                               ; preds = %8, %20, %14
  ret void
}

declare dso_local i32 @bufferevent_suspend_read_(i64, i32) #1

declare dso_local i32 @event_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
