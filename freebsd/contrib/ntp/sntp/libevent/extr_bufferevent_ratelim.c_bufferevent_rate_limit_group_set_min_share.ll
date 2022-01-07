; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_ratelim.c_bufferevent_rate_limit_group_set_min_share.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_ratelim.c_bufferevent_rate_limit_group_set_min_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_rate_limit_group = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EV_SSIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_rate_limit_group_set_min_share(%struct.bufferevent_rate_limit_group* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent_rate_limit_group*, align 8
  %5 = alloca i64, align 8
  store %struct.bufferevent_rate_limit_group* %0, %struct.bufferevent_rate_limit_group** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EV_SSIZE_MAX, align 8
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %4, align 8
  %13 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %4, align 8
  %16 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %14, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %4, align 8
  %22 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %20, %10
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %4, align 8
  %28 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %26, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %4, align 8
  %34 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %4, align 8
  %40 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %9
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
