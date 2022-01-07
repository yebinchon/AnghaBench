; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_tls_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@eap_tls_process_msg = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"EAP-TLS: No success data in resumed session - reject attempt\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"EAP-TLS: Resumed session for another EAP type (%u) - reject attempt\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"EAP-TLS: Resuming previous session\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_tls_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_tls_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_tls_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.eap_tls_data*
  store %struct.eap_tls_data* %11, %struct.eap_tls_data** %7, align 8
  %12 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %13 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %14 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %13, i32 0, i32 1
  %15 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %16 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %17 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %18 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @eap_tls_process_msg, align 4
  %21 = call i64 @eap_server_tls_process(%struct.eap_sm* %12, %struct.TYPE_2__* %14, %struct.wpabuf* %15, %struct.eap_tls_data* %16, i64 %19, i32* null, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %25 = load i32, i32* @FAILURE, align 4
  %26 = call i32 @eap_tls_state(%struct.eap_tls_data* %24, i32 %25)
  br label %94

27:                                               ; preds = %3
  %28 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %29 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %32 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @tls_connection_established(i32 %30, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %39 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %42 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @tls_connection_resumed(i32 %40, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37, %27
  br label %94

48:                                               ; preds = %37
  %49 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %50 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.wpabuf* @tls_connection_get_success_data(i32 %52)
  store %struct.wpabuf* %53, %struct.wpabuf** %8, align 8
  %54 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %55 = icmp ne %struct.wpabuf* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %58 = call i32 @wpabuf_len(%struct.wpabuf* %57)
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %56, %48
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %64 = load i32, i32* @FAILURE, align 4
  %65 = call i32 @eap_tls_state(%struct.eap_tls_data* %63, i32 %64)
  br label %94

66:                                               ; preds = %56
  %67 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %68 = call i64* @wpabuf_head(%struct.wpabuf* %67)
  store i64* %68, i64** %9, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %72 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %66
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = load i64*, i64** %9, align 8
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  %80 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %81 = load i32, i32* @FAILURE, align 4
  %82 = call i32 @eap_tls_state(%struct.eap_tls_data* %80, i32 %81)
  br label %94

83:                                               ; preds = %66
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %87 = load i32, i32* @SUCCESS, align 4
  %88 = call i32 @eap_tls_state(%struct.eap_tls_data* %86, i32 %87)
  %89 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %90 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @tls_connection_set_success_data_resumed(i32 %92)
  br label %94

94:                                               ; preds = %83, %75, %60, %47, %23
  ret void
}

declare dso_local i64 @eap_server_tls_process(%struct.eap_sm*, %struct.TYPE_2__*, %struct.wpabuf*, %struct.eap_tls_data*, i64, i32*, i32) #1

declare dso_local i32 @eap_tls_state(%struct.eap_tls_data*, i32) #1

declare dso_local i32 @tls_connection_established(i32, i32) #1

declare dso_local i32 @tls_connection_resumed(i32, i32) #1

declare dso_local %struct.wpabuf* @tls_connection_get_success_data(i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @tls_connection_set_success_data_resumed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
