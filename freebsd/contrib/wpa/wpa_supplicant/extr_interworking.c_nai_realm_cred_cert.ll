; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_cred_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_cred_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.nai_realm_eap = type { i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"nai-realm-cred-cert: Method not supported: %d\00", align 1
@EAP_TYPE_TLS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"nai-realm-cred-cert: Method not TLS: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.nai_realm_eap*)* @nai_realm_cred_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nai_realm_cred_cert(%struct.wpa_supplicant* %0, %struct.nai_realm_eap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.nai_realm_eap*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.nai_realm_eap* %1, %struct.nai_realm_eap** %5, align 8
  %6 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %7 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %8 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32* @eap_get_name(i32 %6, i64 %9)
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %16 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @wpa_msg(%struct.wpa_supplicant* %13, i32 %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %17)
  store i32 0, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %21 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EAP_TYPE_TLS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %29 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wpa_msg(%struct.wpa_supplicant* %26, i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %25, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32* @eap_get_name(i32, i64) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
