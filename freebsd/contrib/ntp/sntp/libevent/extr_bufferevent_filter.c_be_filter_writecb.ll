; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_writecb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_writecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_filtered = type { i32 }
%struct.bufferevent_private = type { i64 }

@BEV_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @be_filter_writecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_filter_writecb(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bufferevent_filtered*, align 8
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca %struct.bufferevent_private*, align 8
  %8 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bufferevent_filtered*
  store %struct.bufferevent_filtered* %10, %struct.bufferevent_filtered** %5, align 8
  %11 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %12 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %11)
  store %struct.bufferevent* %12, %struct.bufferevent** %6, align 8
  %13 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %14 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %13)
  store %struct.bufferevent_private* %14, %struct.bufferevent_private** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %16 = call i32 @BEV_LOCK(%struct.bufferevent* %15)
  %17 = load %struct.bufferevent_private*, %struct.bufferevent_private** %7, align 8
  %18 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @EVUTIL_ASSERT(i32 %21)
  %23 = load %struct.bufferevent_private*, %struct.bufferevent_private** %7, align 8
  %24 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %29 = load i32, i32* @BEV_NORMAL, align 4
  %30 = call i32 @be_filter_process_output(%struct.bufferevent_filtered* %28, i32 %29, i32* %8)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %33 = call i32 @BEV_UNLOCK(%struct.bufferevent* %32)
  ret void
}

declare dso_local %struct.bufferevent* @downcast(%struct.bufferevent_filtered*) #1

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @be_filter_process_output(%struct.bufferevent_filtered*, i32, i32*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
