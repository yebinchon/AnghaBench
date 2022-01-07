; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_wsc.c_eap_wsc_process_cont.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_wsc.c_eap_wsc_process_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_wsc_data = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"EAP-WSC: Unexpected Op-Code %d in fragment (expected %d)\00", align 1
@FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"EAP-WSC: Fragment overflow\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"EAP-WSC: Received %lu bytes, waiting for %lu bytes more\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_wsc_data*, i64*, i64, i64)* @eap_wsc_process_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_wsc_process_cont(%struct.eap_wsc_data* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_wsc_data*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.eap_wsc_data* %0, %struct.eap_wsc_data** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %6, align 8
  %12 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %6, align 8
  %19 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %20)
  %22 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %6, align 8
  %23 = load i32, i32* @FAIL, align 4
  %24 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %22, i32 %23)
  store i32 -1, i32* %5, align 4
  br label %52

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %6, align 8
  %28 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @wpabuf_tailroom(i32 %29)
  %31 = icmp ugt i64 %26, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %6, align 8
  %36 = load i32, i32* @FAIL, align 4
  %37 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %35, i32 %36)
  store i32 -1, i32* %5, align 4
  br label %52

38:                                               ; preds = %25
  %39 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %6, align 8
  %40 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @wpabuf_put_data(i32 %41, i64* %42, i64 %43)
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %6, align 8
  %48 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @wpabuf_tailroom(i32 %49)
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %46, i64 %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %38, %32, %15
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_wsc_state(%struct.eap_wsc_data*, i32) #1

declare dso_local i64 @wpabuf_tailroom(i32) #1

declare dso_local i32 @wpabuf_put_data(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
