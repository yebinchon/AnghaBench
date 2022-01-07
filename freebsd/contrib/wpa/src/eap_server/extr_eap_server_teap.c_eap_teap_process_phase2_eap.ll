; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_process_phase2_eap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_process_phase2_eap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32 }
%struct.eap_hdr = type { i64, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"EAP-TEAP: Too short Phase 2 EAP frame (len=%lu)\00", align 1
@TEAP_ERROR_INNER_METHOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"EAP-TEAP: Length mismatch in Phase 2 EAP frame (len=%lu hdr->length=%lu)\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"EAP-TEAP: Received Phase 2: code=%d identifier=%d length=%lu\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"EAP-TEAP: Unexpected code=%d in Phase 2 EAP header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_teap_data*, i32*, i64)* @eap_teap_process_phase2_eap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_teap_process_phase2_eap(%struct.eap_sm* %0, %struct.eap_teap_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_teap_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.eap_hdr*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = bitcast i32* %11 to %struct.eap_hdr*
  store %struct.eap_hdr* %12, %struct.eap_hdr** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %13, 16
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %20 = load i32, i32* @TEAP_ERROR_INNER_METHOD, align 4
  %21 = call i32 @eap_teap_req_failure(%struct.eap_teap_data* %19, i32 %20)
  br label %64

22:                                               ; preds = %4
  %23 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %24 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @be_to_host16(i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load i32, i32* @MSG_INFO, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %33)
  %35 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %36 = load i32, i32* @TEAP_ERROR_INNER_METHOD, align 4
  %37 = call i32 @eap_teap_req_failure(%struct.eap_teap_data* %35, i32 %36)
  br label %64

38:                                               ; preds = %22
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %41 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %44 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %42, i32 %45, i64 %46)
  %48 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %49 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  switch i64 %50, label %58 [
    i64 128, label %51
  ]

51:                                               ; preds = %38
  %52 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %53 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %54 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %55 = bitcast %struct.eap_hdr* %54 to i32*
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @eap_teap_process_phase2_response(%struct.eap_sm* %52, %struct.eap_teap_data* %53, i32* %55, i64 %56)
  br label %64

58:                                               ; preds = %38
  %59 = load i32, i32* @MSG_INFO, align 4
  %60 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %61 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %15, %30, %58, %51
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @eap_teap_req_failure(%struct.eap_teap_data*, i32) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i32 @eap_teap_process_phase2_response(%struct.eap_sm*, %struct.eap_teap_data*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
