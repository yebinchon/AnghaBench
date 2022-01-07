; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_put_message_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_put_message_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i32 }
%struct.wps_er_ap = type { i32*, i32* }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"WPS ER: PutMessage OK\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"WPS ER: PutMessage failed\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"NewOutMessage\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"WPS ER: Could not extract NewOutMessage from PutMessage response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.http_client*, i32)* @wps_er_http_put_message_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_http_put_message_cb(i8* %0, %struct.http_client* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wps_er_ap*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.http_client* %1, %struct.http_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.wps_er_ap*
  store %struct.wps_er_ap* %13, %struct.wps_er_ap** %7, align 8
  store i8* null, i8** %9, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %65 [
    i32 129, label %15
    i32 131, label %50
    i32 130, label %50
    i32 128, label %50
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.http_client*, %struct.http_client** %5, align 8
  %19 = call %struct.wpabuf* @http_client_get_body(%struct.http_client* %18)
  store %struct.wpabuf* %19, %struct.wpabuf** %8, align 8
  %20 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %21 = icmp ne %struct.wpabuf* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %24 = call i32 @wpabuf_len(%struct.wpabuf* %23)
  %25 = add nsw i32 %24, 1
  %26 = call i8* @os_zalloc(i32 %25)
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %22, %15
  %28 = load i8*, i8** %9, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %32 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %37 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @wps_deinit(i32* %38)
  %40 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %41 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  br label %65

43:                                               ; preds = %27
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %46 = call i32 @wpabuf_head(%struct.wpabuf* %45)
  %47 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %48 = call i32 @wpabuf_len(%struct.wpabuf* %47)
  %49 = call i32 @os_memcpy(i8* %44, i32 %46, i32 %48)
  br label %65

50:                                               ; preds = %3, %3, %3
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %54 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %59 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @wps_deinit(i32* %60)
  %62 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %63 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %57, %50
  br label %65

65:                                               ; preds = %3, %64, %43, %42
  %66 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %67 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @http_client_free(i32* %68)
  %70 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %71 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %65
  %75 = load i8*, i8** %9, align 8
  %76 = call %struct.wpabuf* @xml_get_base64_item(i8* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %11)
  store %struct.wpabuf* %76, %struct.wpabuf** %10, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @os_free(i8* %77)
  %79 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %80 = icmp eq %struct.wpabuf* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 @wpa_printf(i32 %82, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %85 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @wps_deinit(i32* %86)
  %88 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %89 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %96

90:                                               ; preds = %74
  %91 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %92 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %93 = call i32 @wps_er_ap_process(%struct.wps_er_ap* %91, %struct.wpabuf* %92)
  %94 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %95 = call i32 @wpabuf_free(%struct.wpabuf* %94)
  br label %96

96:                                               ; preds = %81, %90, %65
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @http_client_get_body(%struct.http_client*) #1

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wps_deinit(i32*) #1

declare dso_local i32 @os_memcpy(i8*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @http_client_free(i32*) #1

declare dso_local %struct.wpabuf* @xml_get_base64_item(i8*, i8*, i32*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wps_er_ap_process(%struct.wps_er_ap*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
