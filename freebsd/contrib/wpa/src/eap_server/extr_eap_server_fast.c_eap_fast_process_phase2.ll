; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_process_phase2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_process_phase2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, i32 }
%struct.eap_fast_data = type { %struct.wpabuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"EAP-FAST: Received %lu bytes encrypted data for Phase 2\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"EAP-PEAP: Pending Phase 2 response - skip decryption and use old data\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"EAP-FAST: Failed to decrypt Phase 2 data\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"EAP-FAST: Decrypted Phase 2 TLVs\00", align 1
@METHOD_PENDING_WAIT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [75 x i8] c"EAP-FAST: Phase2 method is in pending wait state - save decrypted response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_fast_data*, %struct.wpabuf*)* @eap_fast_process_phase2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_fast_process_phase2(%struct.eap_sm* %0, %struct.eap_fast_data* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_fast_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %10 = call i64 @wpabuf_len(%struct.wpabuf* %9)
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %13 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %12, i32 0, i32 0
  %14 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %15 = icmp ne %struct.wpabuf* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %20 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %21 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %22 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %21, i32 0, i32 0
  %23 = load %struct.wpabuf*, %struct.wpabuf** %22, align 8
  %24 = call i32 @eap_fast_process_phase2_tlvs(%struct.eap_sm* %19, %struct.eap_fast_data* %20, %struct.wpabuf* %23)
  %25 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %26 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %25, i32 0, i32 0
  %27 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %28 = call i32 @wpabuf_free(%struct.wpabuf* %27)
  %29 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %30 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %29, i32 0, i32 0
  store %struct.wpabuf* null, %struct.wpabuf** %30, align 8
  br label %75

31:                                               ; preds = %3
  %32 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %33 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %36 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %40 = call %struct.wpabuf* @tls_connection_decrypt(i32 %34, i32 %38, %struct.wpabuf* %39)
  store %struct.wpabuf* %40, %struct.wpabuf** %7, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %42 = icmp eq %struct.wpabuf* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load i32, i32* @MSG_INFO, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %47 = load i32, i32* @FAILURE, align 4
  %48 = call i32 @eap_fast_state(%struct.eap_fast_data* %46, i32 %47)
  br label %75

49:                                               ; preds = %31
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %52 = call i32 @wpa_hexdump_buf_key(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %51)
  %53 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %54 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %55 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %56 = call i32 @eap_fast_process_phase2_tlvs(%struct.eap_sm* %53, %struct.eap_fast_data* %54, %struct.wpabuf* %55)
  %57 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %58 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @METHOD_PENDING_WAIT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %49
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %66 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %65, i32 0, i32 0
  %67 = load %struct.wpabuf*, %struct.wpabuf** %66, align 8
  %68 = call i32 @wpabuf_free(%struct.wpabuf* %67)
  %69 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %70 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %71 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %70, i32 0, i32 0
  store %struct.wpabuf* %69, %struct.wpabuf** %71, align 8
  br label %75

72:                                               ; preds = %49
  %73 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %74 = call i32 @wpabuf_free(%struct.wpabuf* %73)
  br label %75

75:                                               ; preds = %72, %62, %43, %16
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @eap_fast_process_phase2_tlvs(%struct.eap_sm*, %struct.eap_fast_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @tls_connection_decrypt(i32, i32, %struct.wpabuf*) #1

declare dso_local i32 @eap_fast_state(%struct.eap_fast_data*, i32) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
