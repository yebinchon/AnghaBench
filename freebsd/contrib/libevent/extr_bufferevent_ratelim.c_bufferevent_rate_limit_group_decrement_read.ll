; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_bufferevent_rate_limit_group_decrement_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_bufferevent_rate_limit_group_decrement_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_rate_limit_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_rate_limit_group_decrement_read(%struct.bufferevent_rate_limit_group* %0, i64 %1) #0 {
  %3 = alloca %struct.bufferevent_rate_limit_group*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bufferevent_rate_limit_group* %0, %struct.bufferevent_rate_limit_group** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %3, align 8
  %9 = call i32 @LOCK_GROUP(%struct.bufferevent_rate_limit_group* %8)
  %10 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %3, align 8
  %11 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %3, align 8
  %16 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, %14
  store i64 %19, i64* %17, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i64, i64* %7, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %3, align 8
  %27 = call i32 @bev_group_suspend_reading_(%struct.bufferevent_rate_limit_group* %26)
  br label %38

28:                                               ; preds = %22, %2
  %29 = load i64, i64* %6, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %3, align 8
  %36 = call i32 @bev_group_unsuspend_reading_(%struct.bufferevent_rate_limit_group* %35)
  br label %37

37:                                               ; preds = %34, %31, %28
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %3, align 8
  %40 = call i32 @UNLOCK_GROUP(%struct.bufferevent_rate_limit_group* %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @LOCK_GROUP(%struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @bev_group_suspend_reading_(%struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @bev_group_unsuspend_reading_(%struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @UNLOCK_GROUP(%struct.bufferevent_rate_limit_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
