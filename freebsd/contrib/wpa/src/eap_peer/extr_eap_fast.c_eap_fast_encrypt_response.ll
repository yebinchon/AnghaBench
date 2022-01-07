; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_encrypt_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_encrypt_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-FAST: Encrypting Phase 2 data\00", align 1
@EAP_TYPE_FAST = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"EAP-FAST: Failed to encrypt a Phase 2 frame\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*, %struct.wpabuf*, i32, %struct.wpabuf**)* @eap_fast_encrypt_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_encrypt_response(%struct.eap_sm* %0, %struct.eap_fast_data* %1, %struct.wpabuf* %2, i32 %3, %struct.wpabuf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_fast_data*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpabuf**, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %8, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.wpabuf** %4, %struct.wpabuf*** %11, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %37

15:                                               ; preds = %5
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %18 = call i32 @wpa_hexdump_buf(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.wpabuf* %17)
  %19 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %20 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %21 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %20, i32 0, i32 1
  %22 = load i32, i32* @EAP_TYPE_FAST, align 4
  %23 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %24 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %28 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %29 = call i64 @eap_peer_tls_encrypt(%struct.eap_sm* %19, i32* %21, i32 %22, i32 %25, i32 %26, %struct.wpabuf* %27, %struct.wpabuf** %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load i32, i32* @MSG_INFO, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %15
  %35 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %36 = call i32 @wpabuf_clear_free(%struct.wpabuf* %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %14
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64 @eap_peer_tls_encrypt(%struct.eap_sm*, i32*, i32, i32, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
