; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tnc.c_tncs_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tnc.c_tncs_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_tnc_data = type { i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAP-TNC: TNCS allowed access\00", align 1
@RECOMMENDATION = common dso_local global i32 0, align 4
@ALLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"EAP-TNC: TNCS has no recommendation\00", align 1
@NO_RECOMMENDATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"EAP-TNC: TNCS requested isolation\00", align 1
@ISOLATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"EAP-TNC: TNCS rejected access\00", align 1
@NO_ACCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"EAP-TNC: TNCS processing error\00", align 1
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_tnc_data*, %struct.wpabuf*)* @tncs_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tncs_process(%struct.eap_tnc_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.eap_tnc_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  store %struct.eap_tnc_data* %0, %struct.eap_tnc_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %6 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %3, align 8
  %7 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %10 = call i32 @wpabuf_head(%struct.wpabuf* %9)
  %11 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %12 = call i32 @wpabuf_len(%struct.wpabuf* %11)
  %13 = call i32 @tncs_process_if_tnccs(i32 %8, i32 %10, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %57 [
    i32 131, label %15
    i32 128, label %24
    i32 130, label %33
    i32 129, label %42
    i32 132, label %51
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %3, align 8
  %19 = load i32, i32* @RECOMMENDATION, align 4
  %20 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %18, i32 %19)
  %21 = load i32, i32* @ALLOW, align 4
  %22 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %3, align 8
  %23 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %58

24:                                               ; preds = %2
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %3, align 8
  %28 = load i32, i32* @RECOMMENDATION, align 4
  %29 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %27, i32 %28)
  %30 = load i32, i32* @NO_RECOMMENDATION, align 4
  %31 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %3, align 8
  %32 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %58

33:                                               ; preds = %2
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %3, align 8
  %37 = load i32, i32* @RECOMMENDATION, align 4
  %38 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %36, i32 %37)
  %39 = load i32, i32* @ISOLATE, align 4
  %40 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %3, align 8
  %41 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %58

42:                                               ; preds = %2
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %3, align 8
  %46 = load i32, i32* @RECOMMENDATION, align 4
  %47 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %45, i32 %46)
  %48 = load i32, i32* @NO_ACCESS, align 4
  %49 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %3, align 8
  %50 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %58

51:                                               ; preds = %2
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = call i32 @wpa_printf(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %3, align 8
  %55 = load i32, i32* @FAIL, align 4
  %56 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %54, i32 %55)
  br label %58

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %57, %51, %42, %33, %24, %15
  ret void
}

declare dso_local i32 @tncs_process_if_tnccs(i32, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_tnc_set_state(%struct.eap_tnc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
