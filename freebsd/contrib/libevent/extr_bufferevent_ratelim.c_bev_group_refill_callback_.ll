; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_bev_group_refill_callback_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_bev_group_refill_callback_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_rate_limit_group = type { i64, %struct.TYPE_2__, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @bev_group_refill_callback_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bev_group_refill_callback_(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent_rate_limit_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bufferevent_rate_limit_group*
  store %struct.bufferevent_rate_limit_group* %11, %struct.bufferevent_rate_limit_group** %7, align 8
  %12 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %13 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %12, i32 0, i32 7
  %14 = call i32 @event_get_base(i32* %13)
  %15 = call i32 @event_base_gettimeofday_cached(i32 %14, %struct.timeval* %9)
  %16 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %17 = call i32 @LOCK_GROUP(%struct.bufferevent_rate_limit_group* %16)
  %18 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %19 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %18, i32 0, i32 6
  %20 = call i32 @ev_token_bucket_get_tick_(%struct.timeval* %9, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %22 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %21, i32 0, i32 1
  %23 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %24 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %23, i32 0, i32 6
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ev_token_bucket_update_(%struct.TYPE_2__* %22, i32* %24, i32 %25)
  %27 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %28 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %3
  %32 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %33 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %38 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %42 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36, %3
  %46 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %47 = call i32 @bev_group_unsuspend_reading_(%struct.bufferevent_rate_limit_group* %46)
  br label %48

48:                                               ; preds = %45, %36, %31
  %49 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %50 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %48
  %54 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %55 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %60 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %64 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58, %48
  %68 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %69 = call i32 @bev_group_unsuspend_writing_(%struct.bufferevent_rate_limit_group* %68)
  br label %70

70:                                               ; preds = %67, %58, %53
  %71 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %7, align 8
  %72 = call i32 @UNLOCK_GROUP(%struct.bufferevent_rate_limit_group* %71)
  ret void
}

declare dso_local i32 @event_base_gettimeofday_cached(i32, %struct.timeval*) #1

declare dso_local i32 @event_get_base(i32*) #1

declare dso_local i32 @LOCK_GROUP(%struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @ev_token_bucket_get_tick_(%struct.timeval*, i32*) #1

declare dso_local i32 @ev_token_bucket_update_(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @bev_group_unsuspend_reading_(%struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @bev_group_unsuspend_writing_(%struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @UNLOCK_GROUP(%struct.bufferevent_rate_limit_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
