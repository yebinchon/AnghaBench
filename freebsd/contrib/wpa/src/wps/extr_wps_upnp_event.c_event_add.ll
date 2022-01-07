; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subscription = type { i64, i32, i32, i64 }
%struct.wpabuf = type { i32 }
%struct.wps_event_ = type { i32, i64, i32*, %struct.subscription* }

@MAX_EVENTS_QUEUED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"WPS UPnP: Too many events queued for subscriber %p\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"WPS UPnP: Do not queue more Probe Request frames for subscription %p since last delivery failed\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"WPS UPnP: Queue event %p for subscriber %p (queue len %u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_add(%struct.subscription* %0, %struct.wpabuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.subscription*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wps_event_*, align 8
  %9 = alloca i32, align 4
  store %struct.subscription* %0, %struct.subscription** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.subscription*, %struct.subscription** %5, align 8
  %11 = getelementptr inbounds %struct.subscription, %struct.subscription* %10, i32 0, i32 2
  %12 = call i32 @dl_list_len(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @MAX_EVENTS_QUEUED, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load %struct.subscription*, %struct.subscription** %5, align 8
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.subscription* %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %102

23:                                               ; preds = %16
  %24 = load %struct.subscription*, %struct.subscription** %5, align 8
  %25 = call %struct.wps_event_* @event_dequeue(%struct.subscription* %24)
  store %struct.wps_event_* %25, %struct.wps_event_** %8, align 8
  %26 = load %struct.wps_event_*, %struct.wps_event_** %8, align 8
  %27 = icmp ne %struct.wps_event_* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %102

29:                                               ; preds = %23
  %30 = load %struct.wps_event_*, %struct.wps_event_** %8, align 8
  %31 = call i32 @event_delete(%struct.wps_event_* %30)
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.subscription*, %struct.subscription** %5, align 8
  %34 = getelementptr inbounds %struct.subscription, %struct.subscription* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load %struct.subscription*, %struct.subscription** %5, align 8
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), %struct.subscription* %45)
  store i32 -1, i32* %4, align 4
  br label %102

47:                                               ; preds = %40, %37, %32
  %48 = call %struct.wps_event_* @os_zalloc(i32 32)
  store %struct.wps_event_* %48, %struct.wps_event_** %8, align 8
  %49 = load %struct.wps_event_*, %struct.wps_event_** %8, align 8
  %50 = icmp eq %struct.wps_event_* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %102

52:                                               ; preds = %47
  %53 = load %struct.wps_event_*, %struct.wps_event_** %8, align 8
  %54 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %53, i32 0, i32 0
  %55 = call i32 @dl_list_init(i32* %54)
  %56 = load %struct.subscription*, %struct.subscription** %5, align 8
  %57 = load %struct.wps_event_*, %struct.wps_event_** %8, align 8
  %58 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %57, i32 0, i32 3
  store %struct.subscription* %56, %struct.subscription** %58, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %60 = call i32* @wpabuf_dup(%struct.wpabuf* %59)
  %61 = load %struct.wps_event_*, %struct.wps_event_** %8, align 8
  %62 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  %63 = load %struct.wps_event_*, %struct.wps_event_** %8, align 8
  %64 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %52
  %68 = load %struct.wps_event_*, %struct.wps_event_** %8, align 8
  %69 = call i32 @os_free(%struct.wps_event_* %68)
  store i32 -1, i32* %4, align 4
  br label %102

70:                                               ; preds = %52
  %71 = load %struct.subscription*, %struct.subscription** %5, align 8
  %72 = getelementptr inbounds %struct.subscription, %struct.subscription* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.wps_event_*, %struct.wps_event_** %8, align 8
  %76 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %75, i32 0, i32 1
  store i64 %73, i64* %76, align 8
  %77 = load %struct.subscription*, %struct.subscription** %5, align 8
  %78 = getelementptr inbounds %struct.subscription, %struct.subscription* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %70
  %82 = load %struct.subscription*, %struct.subscription** %5, align 8
  %83 = getelementptr inbounds %struct.subscription, %struct.subscription* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %81, %70
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = load %struct.wps_event_*, %struct.wps_event_** %8, align 8
  %89 = load %struct.subscription*, %struct.subscription** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add i32 %90, 1
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), %struct.wps_event_* %88, %struct.subscription* %89, i32 %91)
  %93 = load %struct.subscription*, %struct.subscription** %5, align 8
  %94 = getelementptr inbounds %struct.subscription, %struct.subscription* %93, i32 0, i32 2
  %95 = load %struct.wps_event_*, %struct.wps_event_** %8, align 8
  %96 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %95, i32 0, i32 0
  %97 = call i32 @dl_list_add_tail(i32* %94, i32* %96)
  %98 = load %struct.subscription*, %struct.subscription** %5, align 8
  %99 = getelementptr inbounds %struct.subscription, %struct.subscription* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @event_send_all_later(i32 %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %86, %67, %51, %43, %28, %22
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @dl_list_len(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wps_event_* @event_dequeue(%struct.subscription*) #1

declare dso_local i32 @event_delete(%struct.wps_event_*) #1

declare dso_local %struct.wps_event_* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

declare dso_local i32* @wpabuf_dup(%struct.wpabuf*) #1

declare dso_local i32 @os_free(%struct.wps_event_*) #1

declare dso_local i32 @dl_list_add_tail(i32*, i32*) #1

declare dso_local i32 @event_send_all_later(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
