; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_bev_async_consider_reading.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_bev_async_consider_reading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_async = type { i64, %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i64, i64, %struct.bufferevent }
%struct.bufferevent = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EV_READ = common dso_local global i32 0, align 4
@BEV_EVENT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent_async*)* @bev_async_consider_reading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bev_async_consider_reading(%struct.bufferevent_async* %0) #0 {
  %2 = alloca %struct.bufferevent_async*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent_async* %0, %struct.bufferevent_async** %2, align 8
  %8 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %9 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store %struct.bufferevent* %10, %struct.bufferevent** %7, align 8
  %11 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %12 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %17 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  br label %114

22:                                               ; preds = %15
  %23 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %24 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %29 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EV_READ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %36 = call i32 @bev_async_del_read(%struct.bufferevent_async* %35)
  br label %114

37:                                               ; preds = %27
  %38 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %39 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @evbuffer_get_length(i32 %40)
  store i64 %41, i64* %3, align 8
  %42 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %43 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %37
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %54 = call i32 @bev_async_del_read(%struct.bufferevent_async* %53)
  br label %114

55:                                               ; preds = %48
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %3, align 8
  %58 = sub i64 %56, %57
  store i64 %58, i64* %5, align 8
  br label %60

59:                                               ; preds = %37
  store i64 16384, i64* %5, align 8
  br label %60

60:                                               ; preds = %59, %55
  %61 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %62 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %61, i32 0, i32 1
  %63 = call i64 @bufferevent_get_read_max_(%struct.TYPE_5__* %62)
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp uge i64 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %72, %69, %60
  %76 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %77 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %83 = call i32 @bev_async_del_read(%struct.bufferevent_async* %82)
  br label %114

84:                                               ; preds = %75
  %85 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %86 = call i32 @bufferevent_incref_(%struct.bufferevent* %85)
  %87 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %88 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %92 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %91, i32 0, i32 3
  %93 = call i64 @evbuffer_launch_read_(i32 %89, i64 %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %84
  %96 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %97 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %99 = load i32, i32* @BEV_EVENT_ERROR, align 4
  %100 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %98, i32 %99, i32 0)
  %101 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %102 = call i32 @bufferevent_decref_(%struct.bufferevent* %101)
  br label %113

103:                                              ; preds = %84
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %106 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %108 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %107, i32 0, i32 1
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @bufferevent_decrement_read_buckets_(%struct.TYPE_5__* %108, i64 %109)
  %111 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %112 = call i32 @bev_async_add_read(%struct.bufferevent_async* %111)
  br label %113

113:                                              ; preds = %103, %95
  br label %114

114:                                              ; preds = %113, %81, %52, %34, %21
  ret void
}

declare dso_local i32 @bev_async_del_read(%struct.bufferevent_async*) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i64 @bufferevent_get_read_max_(%struct.TYPE_5__*) #1

declare dso_local i32 @bufferevent_incref_(%struct.bufferevent*) #1

declare dso_local i64 @evbuffer_launch_read_(i32, i64, i32*) #1

declare dso_local i32 @bufferevent_run_eventcb_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @bufferevent_decref_(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_decrement_read_buckets_(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @bev_async_add_read(%struct.bufferevent_async*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
