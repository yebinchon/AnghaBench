; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_be_async_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_be_async_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_async = type { i32 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16)* @be_async_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_async_disable(%struct.bufferevent* %0, i16 signext %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.bufferevent_async*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = call %struct.bufferevent_async* @upcast(%struct.bufferevent* %6)
  store %struct.bufferevent_async* %7, %struct.bufferevent_async** %5, align 8
  %8 = load i16, i16* %4, align 2
  %9 = sext i16 %8 to i32
  %10 = load i16, i16* @EV_READ, align 2
  %11 = sext i16 %10 to i32
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %16 = call i32 @BEV_DEL_GENERIC_READ_TIMEOUT(%struct.bufferevent* %15)
  %17 = load %struct.bufferevent_async*, %struct.bufferevent_async** %5, align 8
  %18 = call i32 @bev_async_del_read(%struct.bufferevent_async* %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i16, i16* %4, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* @EV_WRITE, align 2
  %23 = sext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %28 = call i32 @BEV_DEL_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %27)
  %29 = load %struct.bufferevent_async*, %struct.bufferevent_async** %5, align 8
  %30 = call i32 @bev_async_del_write(%struct.bufferevent_async* %29)
  br label %31

31:                                               ; preds = %26, %19
  ret i32 0
}

declare dso_local %struct.bufferevent_async* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @BEV_DEL_GENERIC_READ_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @bev_async_del_read(%struct.bufferevent_async*) #1

declare dso_local i32 @BEV_DEL_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @bev_async_del_write(%struct.bufferevent_async*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
