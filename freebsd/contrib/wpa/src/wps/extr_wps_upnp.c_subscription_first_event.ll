; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp.c_subscription_first_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp.c_subscription_first_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subscription = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [97 x i8] c"<?xml version=\221.0\22 encoding=\22utf-8\22?>\0A<e:propertyset xmlns:e=\22urn:schemas-upnp-org:event-1-0\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"</e:propertyset>\0A\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"WPS UPnP: Use a fake WSC_ACK as the initial WLANEvent\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"WPS UPnP: WLANEvent not known for initial event message\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"STAStatus\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"APStatus\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"WLANEvent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subscription*)* @subscription_first_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subscription_first_event(%struct.subscription* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subscription*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [10 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpabuf*, align 8
  store %struct.subscription* %0, %struct.subscription** %3, align 8
  store i32 1, i32* %6, align 4
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %12 = load %struct.subscription*, %struct.subscription** %3, align 8
  %13 = getelementptr inbounds %struct.subscription, %struct.subscription* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %21 = call %struct.wpabuf* (...) @build_fake_wsc_ack()
  store %struct.wpabuf* %21, %struct.wpabuf** %11, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %23 = icmp ne %struct.wpabuf* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %26 = call i32 @wpabuf_head(%struct.wpabuf* %25)
  %27 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %28 = call i32 @wpabuf_len(%struct.wpabuf* %27)
  %29 = call i64 @base64_encode(i32 %26, i32 %28, i32* null)
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.subscription*, %struct.subscription** %3, align 8
  %32 = getelementptr inbounds %struct.subscription, %struct.subscription* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i8* %30, i8** %34, align 8
  %35 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %36 = call i32 @wpabuf_free(%struct.wpabuf* %35)
  br label %37

37:                                               ; preds = %24, %18
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.subscription*, %struct.subscription** %3, align 8
  %40 = getelementptr inbounds %struct.subscription, %struct.subscription* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %38
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = call i32 @wpa_printf(i32 %52, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 @os_strlen(i8* %55)
  %57 = add nsw i64 500, %56
  %58 = call %struct.wpabuf* @wpabuf_alloc(i64 %57)
  store %struct.wpabuf* %58, %struct.wpabuf** %5, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %60 = icmp eq %struct.wpabuf* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 -1, i32* %2, align 4
  br label %97

62:                                               ; preds = %54
  %63 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @wpabuf_put_str(%struct.wpabuf* %63, i8* %64)
  %66 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %67 = call i32 @wpabuf_put_property(%struct.wpabuf* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %68 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @os_snprintf(i8* %68, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  %71 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %72 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %73 = call i32 @wpabuf_put_property(%struct.wpabuf* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %72)
  %74 = load i8*, i8** %4, align 8
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %62
  %78 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @wpabuf_put_property(%struct.wpabuf* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %77, %62
  %82 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @wpabuf_put_str(%struct.wpabuf* %82, i8* %83)
  %85 = load %struct.subscription*, %struct.subscription** %3, align 8
  %86 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %87 = call i32 @event_add(%struct.subscription* %85, %struct.wpabuf* %86, i32 0)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %92 = call i32 @wpabuf_free(%struct.wpabuf* %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %2, align 4
  br label %97

94:                                               ; preds = %81
  %95 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %96 = call i32 @wpabuf_free(%struct.wpabuf* %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %94, %90, %61
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @build_fake_wsc_ack(...) #1

declare dso_local i64 @base64_encode(i32, i32, i32*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @wpabuf_put_property(%struct.wpabuf*, i8*, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @event_add(%struct.subscription*, %struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
