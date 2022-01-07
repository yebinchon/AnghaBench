; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_bev_group_random_element_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_bev_group_random_element_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bufferevent_private = type { i32 }
%struct.bufferevent_rate_limit_group = type { i32, i32, i32 }

@rate_limiting = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bufferevent_private* (%struct.bufferevent_rate_limit_group*)* @bev_group_random_element_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bufferevent_private* @bev_group_random_element_(%struct.bufferevent_rate_limit_group* %0) #0 {
  %2 = alloca %struct.bufferevent_private*, align 8
  %3 = alloca %struct.bufferevent_rate_limit_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent_private*, align 8
  store %struct.bufferevent_rate_limit_group* %0, %struct.bufferevent_rate_limit_group** %3, align 8
  %6 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %3, align 8
  %7 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.bufferevent_private* null, %struct.bufferevent_private** %2, align 8
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %3, align 8
  %13 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %12, i32 0, i32 0
  %14 = call i32 @LIST_EMPTY(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @EVUTIL_ASSERT(i32 %17)
  %19 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %3, align 8
  %20 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %19, i32 0, i32 2
  %21 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %3, align 8
  %22 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @evutil_weakrand_range_(i32* %20, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %3, align 8
  %26 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %25, i32 0, i32 0
  %27 = call %struct.bufferevent_private* @LIST_FIRST(i32* %26)
  store %struct.bufferevent_private* %27, %struct.bufferevent_private** %5, align 8
  br label %28

28:                                               ; preds = %32, %11
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %4, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rate_limiting, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.bufferevent_private* @LIST_NEXT(%struct.bufferevent_private* %33, i32 %36)
  store %struct.bufferevent_private* %37, %struct.bufferevent_private** %5, align 8
  br label %28

38:                                               ; preds = %28
  %39 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  store %struct.bufferevent_private* %39, %struct.bufferevent_private** %2, align 8
  br label %40

40:                                               ; preds = %38, %10
  %41 = load %struct.bufferevent_private*, %struct.bufferevent_private** %2, align 8
  ret %struct.bufferevent_private* %41
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @evutil_weakrand_range_(i32*, i32) #1

declare dso_local %struct.bufferevent_private* @LIST_FIRST(i32*) #1

declare dso_local %struct.bufferevent_private* @LIST_NEXT(%struct.bufferevent_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
