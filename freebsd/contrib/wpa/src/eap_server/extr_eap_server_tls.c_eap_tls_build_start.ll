; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_build_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_build_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_tls_data = type { i32 }

@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"EAP-TLS: Failed to allocate memory for request\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@EAP_TLS_FLAGS_START = common dso_local global i32 0, align 4
@CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_tls_data*, i32)* @eap_tls_build_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_tls_build_start(%struct.eap_sm* %0, %struct.eap_tls_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_tls_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_tls_data* %1, %struct.eap_tls_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.eap_tls_data*, %struct.eap_tls_data** %6, align 8
  %10 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.wpabuf* @eap_tls_msg_alloc(i32 %11, i32 1, i32 %12, i32 %13)
  store %struct.wpabuf* %14, %struct.wpabuf** %8, align 8
  %15 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %16 = icmp eq %struct.wpabuf* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_ERROR, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.eap_tls_data*, %struct.eap_tls_data** %6, align 8
  %21 = load i32, i32* @FAILURE, align 4
  %22 = call i32 @eap_tls_state(%struct.eap_tls_data* %20, i32 %21)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %31

23:                                               ; preds = %3
  %24 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %25 = load i32, i32* @EAP_TLS_FLAGS_START, align 4
  %26 = call i32 @wpabuf_put_u8(%struct.wpabuf* %24, i32 %25)
  %27 = load %struct.eap_tls_data*, %struct.eap_tls_data** %6, align 8
  %28 = load i32, i32* @CONTINUE, align 4
  %29 = call i32 @eap_tls_state(%struct.eap_tls_data* %27, i32 %28)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %30, %struct.wpabuf** %4, align 8
  br label %31

31:                                               ; preds = %23, %17
  %32 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %32
}

declare dso_local %struct.wpabuf* @eap_tls_msg_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_tls_state(%struct.eap_tls_data*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
