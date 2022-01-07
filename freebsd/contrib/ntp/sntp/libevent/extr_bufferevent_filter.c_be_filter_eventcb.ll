; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_eventcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_eventcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_filtered = type { i32 }
%struct.bufferevent_private = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @be_filter_eventcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_filter_eventcb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent_filtered*, align 8
  %8 = alloca %struct.bufferevent*, align 8
  %9 = alloca %struct.bufferevent_private*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bufferevent_filtered*
  store %struct.bufferevent_filtered* %11, %struct.bufferevent_filtered** %7, align 8
  %12 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %7, align 8
  %13 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %12)
  store %struct.bufferevent* %13, %struct.bufferevent** %8, align 8
  %14 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %15 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %14)
  store %struct.bufferevent_private* %15, %struct.bufferevent_private** %9, align 8
  %16 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %17 = call i32 @BEV_LOCK(%struct.bufferevent* %16)
  %18 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %19 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @EVUTIL_ASSERT(i32 %22)
  %24 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %25 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %30 = load i16, i16* %5, align 2
  %31 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %29, i16 signext %30, i32 0)
  br label %32

32:                                               ; preds = %28, %3
  %33 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %34 = call i32 @BEV_UNLOCK(%struct.bufferevent* %33)
  ret void
}

declare dso_local %struct.bufferevent* @downcast(%struct.bufferevent_filtered*) #1

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @bufferevent_run_eventcb_(%struct.bufferevent*, i16 signext, i32) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
