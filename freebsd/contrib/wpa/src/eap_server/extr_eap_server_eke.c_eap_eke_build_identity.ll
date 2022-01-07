; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_build_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_build_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, i32 }
%struct.eap_eke_data = type { i32, %struct.wpabuf* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EAP-EKE: Request/Identity\00", align 1
@EAP_EKE_ID = common dso_local global i32 0, align 4
@EAP_EKE_DHGROUP_EKE_16 = common dso_local global i32 0, align 4
@EAP_EKE_ENCR_AES128_CBC = common dso_local global i32 0, align 4
@EAP_EKE_PRF_HMAC_SHA2_256 = common dso_local global i32 0, align 4
@EAP_EKE_MAC_HMAC_SHA2_256 = common dso_local global i32 0, align 4
@EAP_EKE_DHGROUP_EKE_15 = common dso_local global i32 0, align 4
@EAP_EKE_DHGROUP_EKE_14 = common dso_local global i32 0, align 4
@EAP_EKE_PRF_HMAC_SHA1 = common dso_local global i32 0, align 4
@EAP_EKE_MAC_HMAC_SHA1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_eke_data*, i32)* @eap_eke_build_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_eke_build_identity(%struct.eap_sm* %0, %struct.eap_eke_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_eke_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_eke_data* %1, %struct.eap_eke_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %13 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 19, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %9, align 8
  %17 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* @EAP_EKE_ID, align 4
  %21 = call %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data* %17, i32 %18, i64 %19, i32 %20)
  store %struct.wpabuf* %21, %struct.wpabuf** %8, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %23 = icmp eq %struct.wpabuf* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %108

25:                                               ; preds = %3
  %26 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %27 = call i32 @wpabuf_put_u8(%struct.wpabuf* %26, i32 4)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %29 = call i32 @wpabuf_put_u8(%struct.wpabuf* %28, i32 0)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %31 = load i32, i32* @EAP_EKE_DHGROUP_EKE_16, align 4
  %32 = call i32 @wpabuf_put_u8(%struct.wpabuf* %30, i32 %31)
  %33 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %34 = load i32, i32* @EAP_EKE_ENCR_AES128_CBC, align 4
  %35 = call i32 @wpabuf_put_u8(%struct.wpabuf* %33, i32 %34)
  %36 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %37 = load i32, i32* @EAP_EKE_PRF_HMAC_SHA2_256, align 4
  %38 = call i32 @wpabuf_put_u8(%struct.wpabuf* %36, i32 %37)
  %39 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %40 = load i32, i32* @EAP_EKE_MAC_HMAC_SHA2_256, align 4
  %41 = call i32 @wpabuf_put_u8(%struct.wpabuf* %39, i32 %40)
  %42 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %43 = load i32, i32* @EAP_EKE_DHGROUP_EKE_15, align 4
  %44 = call i32 @wpabuf_put_u8(%struct.wpabuf* %42, i32 %43)
  %45 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %46 = load i32, i32* @EAP_EKE_ENCR_AES128_CBC, align 4
  %47 = call i32 @wpabuf_put_u8(%struct.wpabuf* %45, i32 %46)
  %48 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %49 = load i32, i32* @EAP_EKE_PRF_HMAC_SHA2_256, align 4
  %50 = call i32 @wpabuf_put_u8(%struct.wpabuf* %48, i32 %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %52 = load i32, i32* @EAP_EKE_MAC_HMAC_SHA2_256, align 4
  %53 = call i32 @wpabuf_put_u8(%struct.wpabuf* %51, i32 %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %55 = load i32, i32* @EAP_EKE_DHGROUP_EKE_14, align 4
  %56 = call i32 @wpabuf_put_u8(%struct.wpabuf* %54, i32 %55)
  %57 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %58 = load i32, i32* @EAP_EKE_ENCR_AES128_CBC, align 4
  %59 = call i32 @wpabuf_put_u8(%struct.wpabuf* %57, i32 %58)
  %60 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %61 = load i32, i32* @EAP_EKE_PRF_HMAC_SHA2_256, align 4
  %62 = call i32 @wpabuf_put_u8(%struct.wpabuf* %60, i32 %61)
  %63 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %64 = load i32, i32* @EAP_EKE_MAC_HMAC_SHA2_256, align 4
  %65 = call i32 @wpabuf_put_u8(%struct.wpabuf* %63, i32 %64)
  %66 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %67 = load i32, i32* @EAP_EKE_DHGROUP_EKE_14, align 4
  %68 = call i32 @wpabuf_put_u8(%struct.wpabuf* %66, i32 %67)
  %69 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %70 = load i32, i32* @EAP_EKE_ENCR_AES128_CBC, align 4
  %71 = call i32 @wpabuf_put_u8(%struct.wpabuf* %69, i32 %70)
  %72 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %73 = load i32, i32* @EAP_EKE_PRF_HMAC_SHA1, align 4
  %74 = call i32 @wpabuf_put_u8(%struct.wpabuf* %72, i32 %73)
  %75 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %76 = load i32, i32* @EAP_EKE_MAC_HMAC_SHA1, align 4
  %77 = call i32 @wpabuf_put_u8(%struct.wpabuf* %75, i32 %76)
  %78 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %79 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %80 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @wpabuf_put_u8(%struct.wpabuf* %78, i32 %81)
  %83 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %84 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %85 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %88 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @wpabuf_put_data(%struct.wpabuf* %83, i32 %86, i32 %89)
  %91 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %92 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %91, i32 0, i32 1
  %93 = load %struct.wpabuf*, %struct.wpabuf** %92, align 8
  %94 = call i32 @wpabuf_free(%struct.wpabuf* %93)
  %95 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %96 = call %struct.wpabuf* @wpabuf_dup(%struct.wpabuf* %95)
  %97 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %98 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %97, i32 0, i32 1
  store %struct.wpabuf* %96, %struct.wpabuf** %98, align 8
  %99 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %100 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %99, i32 0, i32 1
  %101 = load %struct.wpabuf*, %struct.wpabuf** %100, align 8
  %102 = icmp eq %struct.wpabuf* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %25
  %104 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %105 = call i32 @wpabuf_free(%struct.wpabuf* %104)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %108

106:                                              ; preds = %25
  %107 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %107, %struct.wpabuf** %4, align 8
  br label %108

108:                                              ; preds = %106, %103, %24
  %109 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %109
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data*, i32, i64, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_dup(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
