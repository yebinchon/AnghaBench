; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_learn_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_learn_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.eapol_state_machine = type { i64*, i64, i32, i32, i32 }
%struct.eap_hdr = type { i64 }

@EAP_CODE_RESPONSE = common dso_local global i64 0, align 8
@EAP_TYPE_IDENTITY = common dso_local global i64 0, align 8
@EAP_CODE_INITIATE = common dso_local global i64 0, align 8
@EAP_ERP_TYPE_REAUTH = common dso_local global i64 0, align 8
@HOSTAPD_MODULE_IEEE8021X = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"STA identity '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.eapol_state_machine*, i64*, i64)* @ieee802_1x_learn_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_learn_identity(%struct.hostapd_data* %0, %struct.eapol_state_machine* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.eapol_state_machine*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.eap_hdr*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.eapol_state_machine* %1, %struct.eapol_state_machine** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = bitcast i64* %12 to %struct.eap_hdr*
  store %struct.eap_hdr* %13, %struct.eap_hdr** %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ule i64 %14, 8
  br i1 %15, label %52, label %16

16:                                               ; preds = %4
  %17 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %18 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EAP_CODE_RESPONSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i64*, i64** %7, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %30 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EAP_CODE_INITIATE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EAP_ERP_TYPE_REAUTH, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %42 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EAP_CODE_RESPONSE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %48 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EAP_CODE_INITIATE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %34, %22, %4
  br label %103

53:                                               ; preds = %46, %40
  %54 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %55 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @eap_erp_update_identity(i32 %56, i64* %57, i64 %58)
  %60 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %61 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i64* @eap_get_identity(i32 %62, i64* %10)
  store i64* %63, i64** %9, align 8
  %64 = load i64*, i64** %9, align 8
  %65 = icmp eq i64* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %103

67:                                               ; preds = %53
  %68 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %69 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = call i32 @os_free(i64* %70)
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @dup_binstr(i64* %72, i64 %73)
  %75 = inttoptr i64 %74 to i64*
  %76 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %77 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %76, i32 0, i32 0
  store i64* %75, i64** %77, align 8
  %78 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %79 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = icmp eq i64* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %67
  %83 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %84 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  br label %103

85:                                               ; preds = %67
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %88 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %90 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %91 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %94 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %95 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %96 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = call i32 @hostapd_logger(%struct.hostapd_data* %89, i32 %92, i32 %93, i32 %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64* %97)
  %99 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %100 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %85, %82, %66, %52
  ret void
}

declare dso_local i32 @eap_erp_update_identity(i32, i64*, i64) #1

declare dso_local i64* @eap_get_identity(i32, i64*) #1

declare dso_local i32 @os_free(i64*) #1

declare dso_local i64 @dup_binstr(i64*, i64) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
