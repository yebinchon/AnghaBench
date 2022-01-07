; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_bufferevent.c_bev_timeout_event_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_bufferevent.c_bev_timeout_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.timeout_cb_result = type { i32, i32, i32, i32, i32 }

@BEV_EVENT_READING = common dso_local global i16 0, align 2
@BEV_EVENT_TIMEOUT = common dso_local global i16 0, align 2
@BEV_EVENT_WRITING = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @bev_timeout_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bev_timeout_event_cb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeout_cb_result*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.timeout_cb_result*
  store %struct.timeout_cb_result* %9, %struct.timeout_cb_result** %7, align 8
  %10 = load %struct.timeout_cb_result*, %struct.timeout_cb_result** %7, align 8
  %11 = getelementptr inbounds %struct.timeout_cb_result, %struct.timeout_cb_result* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load i16, i16* %5, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* @BEV_EVENT_READING, align 2
  %17 = sext i16 %16 to i32
  %18 = load i16, i16* @BEV_EVENT_TIMEOUT, align 2
  %19 = sext i16 %18 to i32
  %20 = or i32 %17, %19
  %21 = and i32 %15, %20
  %22 = load i16, i16* @BEV_EVENT_READING, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* @BEV_EVENT_TIMEOUT, align 2
  %25 = sext i16 %24 to i32
  %26 = or i32 %23, %25
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.timeout_cb_result*, %struct.timeout_cb_result** %7, align 8
  %30 = getelementptr inbounds %struct.timeout_cb_result, %struct.timeout_cb_result* %29, i32 0, i32 3
  %31 = call i32 @evutil_gettimeofday(i32* %30, i32* null)
  %32 = load %struct.timeout_cb_result*, %struct.timeout_cb_result** %7, align 8
  %33 = getelementptr inbounds %struct.timeout_cb_result, %struct.timeout_cb_result* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28, %3
  %37 = load i16, i16* %5, align 2
  %38 = sext i16 %37 to i32
  %39 = load i16, i16* @BEV_EVENT_WRITING, align 2
  %40 = sext i16 %39 to i32
  %41 = load i16, i16* @BEV_EVENT_TIMEOUT, align 2
  %42 = sext i16 %41 to i32
  %43 = or i32 %40, %42
  %44 = and i32 %38, %43
  %45 = load i16, i16* @BEV_EVENT_WRITING, align 2
  %46 = sext i16 %45 to i32
  %47 = load i16, i16* @BEV_EVENT_TIMEOUT, align 2
  %48 = sext i16 %47 to i32
  %49 = or i32 %46, %48
  %50 = icmp eq i32 %44, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %36
  %52 = load %struct.timeout_cb_result*, %struct.timeout_cb_result** %7, align 8
  %53 = getelementptr inbounds %struct.timeout_cb_result, %struct.timeout_cb_result* %52, i32 0, i32 1
  %54 = call i32 @evutil_gettimeofday(i32* %53, i32* null)
  %55 = load %struct.timeout_cb_result*, %struct.timeout_cb_result** %7, align 8
  %56 = getelementptr inbounds %struct.timeout_cb_result, %struct.timeout_cb_result* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %51, %36
  ret void
}

declare dso_local i32 @evutil_gettimeofday(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
