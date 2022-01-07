; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_readcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_readcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_filtered = type { i64 }
%struct.bufferevent_private = type { i64 }

@BEV_FINISHED = common dso_local global i32 0, align 4
@BEV_NORMAL = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @be_filter_readcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_filter_readcb(%struct.bufferevent* %0, i8* %1) #0 {
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
  %17 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %18 = call i32 @BEV_LOCK(%struct.bufferevent* %17)
  %19 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %20 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @EVUTIL_ASSERT(i32 %23)
  %25 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %26 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %2
  %30 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %31 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @BEV_FINISHED, align 4
  store i32 %35, i32* %7, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @BEV_NORMAL, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @be_filter_process_input(%struct.bufferevent_filtered* %39, i32 %40, i32* %10)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %47 = load i32, i32* @EV_READ, align 4
  %48 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %45, %38
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %52 = call i32 @BEV_UNLOCK(%struct.bufferevent* %51)
  ret void
}

declare dso_local %struct.bufferevent* @downcast(%struct.bufferevent_filtered*) #1

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @be_filter_process_input(%struct.bufferevent_filtered*, i32, i32*) #1

declare dso_local i32 @bufferevent_trigger_nolock_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
