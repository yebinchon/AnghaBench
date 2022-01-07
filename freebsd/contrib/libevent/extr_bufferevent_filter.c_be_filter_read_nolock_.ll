; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_filter.c_be_filter_read_nolock_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_filter.c_be_filter_read_nolock_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_filtered = type { i32, i64 }
%struct.bufferevent_private = type { i64 }

@BEV_FINISHED = common dso_local global i32 0, align 4
@BEV_NORMAL = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EVBUFFER_CB_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @be_filter_read_nolock_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_filter_read_nolock_(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bufferevent_filtered*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufferevent*, align 8
  %9 = alloca %struct.bufferevent_private*, align 8
  %10 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.bufferevent_filtered*
  store %struct.bufferevent_filtered* %12, %struct.bufferevent_filtered** %5, align 8
  %13 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %14 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %13)
  store %struct.bufferevent* %14, %struct.bufferevent** %8, align 8
  %15 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %16 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %15)
  store %struct.bufferevent_private* %16, %struct.bufferevent_private** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %18 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @EVUTIL_ASSERT(i32 %21)
  %23 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %24 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %2
  %28 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %29 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @BEV_FINISHED, align 4
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @BEV_NORMAL, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @be_filter_process_input(%struct.bufferevent_filtered* %37, i32 %38, i32* %10)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %36
  %44 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %45 = load i32, i32* @EV_READ, align 4
  %46 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %44, i32 %45, i32 0)
  %47 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %48 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @evbuffer_get_length(i32 %49)
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @be_readbuf_full(%struct.bufferevent_filtered* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %59 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %62 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  %65 = call i32 @evbuffer_cb_set_flags(i32 %60, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %52, %43
  br label %67

67:                                               ; preds = %66, %36
  br label %68

68:                                               ; preds = %67, %2
  ret void
}

declare dso_local %struct.bufferevent* @downcast(%struct.bufferevent_filtered*) #1

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @be_filter_process_input(%struct.bufferevent_filtered*, i32, i32*) #1

declare dso_local i32 @bufferevent_trigger_nolock_(%struct.bufferevent*, i32, i32) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i64 @be_readbuf_full(%struct.bufferevent_filtered*, i32) #1

declare dso_local i32 @evbuffer_cb_set_flags(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
