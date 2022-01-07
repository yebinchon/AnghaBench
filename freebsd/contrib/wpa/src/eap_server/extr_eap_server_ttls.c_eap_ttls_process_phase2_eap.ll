; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process_phase2_eap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process_phase2_eap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i64 }
%struct.eap_hdr = type { i64, i32, i32 }

@PHASE2_START = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"EAP-TTLS/EAP: initializing Phase 2\00", align 1
@EAP_TYPE_IDENTITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"EAP-TTLS/EAP: failed to initialize EAP-Identity\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"EAP-TTLS/EAP: too short Phase 2 EAP packet (len=%lu)\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"EAP-TTLS/EAP: received Phase 2 EAP: code=%d identifier=%d length=%lu\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [86 x i8] c"EAP-TTLS/EAP: Length mismatch in Phase 2 EAP frame (hdr len=%lu, data len in AVP=%lu)\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"EAP-TTLS/EAP: Unexpected code=%d in Phase 2 EAP header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_ttls_data*, i32*, i64)* @eap_ttls_process_phase2_eap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ttls_process_phase2_eap(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_ttls_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.eap_hdr*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %6, align 8
  %12 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PHASE2_START, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %20 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %6, align 8
  %21 = load i32, i32* @EAP_TYPE_IDENTITY, align 4
  %22 = call i64 @eap_ttls_phase2_eap_init(%struct.eap_sm* %19, %struct.eap_ttls_data* %20, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %76

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %4
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %29, 16
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  br label %76

35:                                               ; preds = %28
  %36 = load i32*, i32** %7, align 8
  %37 = bitcast i32* %36 to %struct.eap_hdr*
  store %struct.eap_hdr* %37, %struct.eap_hdr** %9, align 8
  %38 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %39 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @be_to_host16(i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %44 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %47 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i64 %45, i32 %48, i64 %49)
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %35
  %55 = load i32, i32* @MSG_INFO, align 4
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i64 %56, i64 %57)
  br label %76

59:                                               ; preds = %35
  %60 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %61 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  switch i64 %62, label %70 [
    i64 128, label %63
  ]

63:                                               ; preds = %59
  %64 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %65 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %6, align 8
  %66 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %67 = bitcast %struct.eap_hdr* %66 to i32*
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @eap_ttls_process_phase2_eap_response(%struct.eap_sm* %64, %struct.eap_ttls_data* %65, i32* %67, i64 %68)
  br label %76

70:                                               ; preds = %59
  %71 = load i32, i32* @MSG_INFO, align 4
  %72 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %73 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %24, %31, %54, %70, %63
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @eap_ttls_phase2_eap_init(%struct.eap_sm*, %struct.eap_ttls_data*, i32) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i32 @eap_ttls_process_phase2_eap_response(%struct.eap_sm*, %struct.eap_ttls_data*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
