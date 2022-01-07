; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_wsc.c_eap_wsc_process_cont.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_wsc.c_eap_wsc_process_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_wsc_data = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"EAP-WSC: Unexpected Op-Code %d in fragment (expected %d)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"EAP-WSC: Fragment overflow\00", align 1
@FAIL = common dso_local global i32 0, align 4
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
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %6, align 8
  %19 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %20)
  store i32 -1, i32* %5, align 4
  br label %49

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %6, align 8
  %25 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @wpabuf_tailroom(i32 %26)
  %28 = icmp ugt i64 %23, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %6, align 8
  %33 = load i32, i32* @FAIL, align 4
  %34 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %32, i32 %33)
  store i32 -1, i32* %5, align 4
  br label %49

35:                                               ; preds = %22
  %36 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %6, align 8
  %37 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @wpabuf_put_data(i32 %38, i64* %39, i64 %40)
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %6, align 8
  %45 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @wpabuf_tailroom(i32 %46)
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %43, i64 %47)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %35, %29, %15
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_tailroom(i32) #1

declare dso_local i32 @eap_wsc_state(%struct.eap_wsc_data*, i32) #1

declare dso_local i32 @wpabuf_put_data(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
