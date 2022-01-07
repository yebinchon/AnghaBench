; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_filtered = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"BEV_OPT_CLOSE_ON_FREE set on an bufferevent with too few references\00", align 1
@be_filter_eventcb = common dso_local global i64 0, align 8
@BEV_SUSPEND_FILT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*)* @be_filter_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_filter_unlink(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca %struct.bufferevent_filtered*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %4 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %5 = call %struct.bufferevent_filtered* @upcast(%struct.bufferevent* %4)
  store %struct.bufferevent_filtered* %5, %struct.bufferevent_filtered** %3, align 8
  %6 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %7 = call i32 @EVUTIL_ASSERT(%struct.bufferevent_filtered* %6)
  %8 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %9 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %17 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = call %struct.TYPE_9__* @BEV_UPCAST(%struct.TYPE_8__* %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @event_warnx(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %30

25:                                               ; preds = %15
  %26 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %27 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call i32 @bufferevent_free(%struct.TYPE_8__* %28)
  br label %30

30:                                               ; preds = %25, %23
  br label %56

31:                                               ; preds = %1
  %32 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %33 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %38 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @be_filter_eventcb, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %46 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = call i32 @bufferevent_setcb(%struct.TYPE_8__* %47, i32* null, i32* null, i32* null, i32* null)
  br label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %51 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i32, i32* @BEV_SUSPEND_FILT_READ, align 4
  %54 = call i32 @bufferevent_unsuspend_read_(%struct.TYPE_8__* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %31
  br label %56

56:                                               ; preds = %55, %30
  ret void
}

declare dso_local %struct.bufferevent_filtered* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(%struct.bufferevent_filtered*) #1

declare dso_local %struct.TYPE_9__* @BEV_UPCAST(%struct.TYPE_8__*) #1

declare dso_local i32 @event_warnx(i8*) #1

declare dso_local i32 @bufferevent_free(%struct.TYPE_8__*) #1

declare dso_local i32 @bufferevent_setcb(%struct.TYPE_8__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bufferevent_unsuspend_read_(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
