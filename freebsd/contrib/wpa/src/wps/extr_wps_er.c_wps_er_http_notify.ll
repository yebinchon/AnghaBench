; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32 }
%struct.http_request = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"/event/\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"WPS ER: HTTP event for an unknown event id %u\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"WPS ER: Unknown HTTP NOTIFY for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er*, %struct.http_request*)* @wps_er_http_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_http_notify(%struct.wps_er* %0, %struct.http_request* %1) #0 {
  %3 = alloca %struct.wps_er*, align 8
  %4 = alloca %struct.http_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.wps_er* %0, %struct.wps_er** %3, align 8
  store %struct.http_request* %1, %struct.http_request** %4, align 8
  %8 = load %struct.http_request*, %struct.http_request** %4, align 8
  %9 = call i8* @http_request_get_uri(%struct.http_request* %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @os_strncmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 7
  %16 = call i32 @atoi(i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %19 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %47

26:                                               ; preds = %13
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 7
  %29 = call i8* @os_strchr(i8* %28, i8 signext 47)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %47

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  %36 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %37 = load %struct.http_request*, %struct.http_request** %4, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @atoi(i8* %38)
  %40 = call i32 @wps_er_http_event(%struct.wps_er* %36, %struct.http_request* %37, i32 %39)
  br label %47

41:                                               ; preds = %2
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load %struct.http_request*, %struct.http_request** %4, align 8
  %46 = call i32 @wps_er_http_resp_not_found(%struct.http_request* %45)
  br label %47

47:                                               ; preds = %22, %32, %41, %33
  ret void
}

declare dso_local i8* @http_request_get_uri(%struct.http_request*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @wps_er_http_event(%struct.wps_er*, %struct.http_request*, i32) #1

declare dso_local i32 @wps_er_http_resp_not_found(%struct.http_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
