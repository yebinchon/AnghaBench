; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_sta_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_sta_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_sta = type { i32* }
%struct.wpabuf = type { i32 }

@WPS_CONTINUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"WPS ER: Protocol run %s with the enrollee (res=%d)\00", align 1
@WPS_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@wps_er_sta_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_sta*, %struct.wpabuf*, i32)* @wps_er_sta_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_sta_process(%struct.wps_er_sta* %0, %struct.wpabuf* %1, i32 %2) #0 {
  %4 = alloca %struct.wps_er_sta*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  store %struct.wps_er_sta* %0, %struct.wps_er_sta** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wps_er_sta*, %struct.wps_er_sta** %4, align 8
  %10 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %14 = call i32 @wps_process_msg(i32* %11, i32 %12, %struct.wpabuf* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @WPS_CONTINUE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.wps_er_sta*, %struct.wps_er_sta** %4, align 8
  %20 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call %struct.wpabuf* @wps_get_msg(i32* %21, i32* %6)
  store %struct.wpabuf* %22, %struct.wpabuf** %8, align 8
  %23 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %24 = icmp ne %struct.wpabuf* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.wps_er_sta*, %struct.wps_er_sta** %4, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %28 = call i32 @wps_er_sta_send_msg(%struct.wps_er_sta* %26, %struct.wpabuf* %27)
  br label %29

29:                                               ; preds = %25, %18
  br label %56

30:                                               ; preds = %3
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @WPS_DONE, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %37)
  %39 = load %struct.wps_er_sta*, %struct.wps_er_sta** %4, align 8
  %40 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @wps_deinit(i32* %41)
  %43 = load %struct.wps_er_sta*, %struct.wps_er_sta** %4, align 8
  %44 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @WPS_DONE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %30
  %49 = load i32, i32* @wps_er_sta_timeout, align 4
  %50 = load %struct.wps_er_sta*, %struct.wps_er_sta** %4, align 8
  %51 = call i32 @eloop_cancel_timeout(i32 %49, %struct.wps_er_sta* %50, i32* null)
  %52 = load i32, i32* @wps_er_sta_timeout, align 4
  %53 = load %struct.wps_er_sta*, %struct.wps_er_sta** %4, align 8
  %54 = call i32 @eloop_register_timeout(i32 10, i32 0, i32 %52, %struct.wps_er_sta* %53, i32* null)
  br label %55

55:                                               ; preds = %48, %30
  br label %56

56:                                               ; preds = %55, %29
  ret void
}

declare dso_local i32 @wps_process_msg(i32*, i32, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wps_get_msg(i32*, i32*) #1

declare dso_local i32 @wps_er_sta_send_msg(%struct.wps_er_sta*, %struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i32) #1

declare dso_local i32 @wps_deinit(i32*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wps_er_sta*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wps_er_sta*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
