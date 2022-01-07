; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_build_phase2_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_build_phase2_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpabuf* (%struct.eap_sm*, i32*, i32)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"EAP-FAST: Phase 2 method not initialized\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"EAP-FAST: Phase 2 EAP-Request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_fast_data*, i32)* @eap_fast_build_phase2_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_fast_build_phase2_req(%struct.eap_sm* %0, %struct.eap_fast_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_fast_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %10 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %37

16:                                               ; preds = %3
  %17 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %18 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.wpabuf* (%struct.eap_sm*, i32*, i32)*, %struct.wpabuf* (%struct.eap_sm*, i32*, i32)** %20, align 8
  %22 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %23 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %24 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.wpabuf* %21(%struct.eap_sm* %22, i32* %25, i32 %26)
  store %struct.wpabuf* %27, %struct.wpabuf** %8, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %29 = icmp eq %struct.wpabuf* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %37

31:                                               ; preds = %16
  %32 = load i32, i32* @MSG_MSGDUMP, align 4
  %33 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %34 = call i32 @wpa_hexdump_buf_key(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.wpabuf* %33)
  %35 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %36 = call %struct.wpabuf* @eap_fast_tlv_eap_payload(%struct.wpabuf* %35)
  store %struct.wpabuf* %36, %struct.wpabuf** %4, align 8
  br label %37

37:                                               ; preds = %31, %30, %13
  %38 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %38
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_fast_tlv_eap_payload(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
