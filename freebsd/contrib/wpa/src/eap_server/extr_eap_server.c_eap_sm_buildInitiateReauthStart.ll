; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_sm_buildInitiateReauthStart.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_sm_buildInitiateReauthStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_ERP_TYPE_REAUTH_START = common dso_local global i64 0, align 8
@EAP_CODE_INITIATE = common dso_local global i32 0, align 4
@EAP_ERP_TLV_DOMAIN_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i32)* @eap_sm_buildInitiateReauthStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sm_buildInitiateReauthStart(%struct.eap_sm* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 1, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %11 = call i8* @eap_get_erp_domain(%struct.eap_sm* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @os_strlen(i8* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = add i64 2, %17
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %23 = load i64, i64* @EAP_ERP_TYPE_REAUTH_START, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @EAP_CODE_INITIATE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.wpabuf* @eap_msg_alloc(i32 %22, i32 %24, i64 %25, i32 %26, i32 %27)
  store %struct.wpabuf* %28, %struct.wpabuf** %8, align 8
  %29 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %30 = icmp eq %struct.wpabuf* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %50

32:                                               ; preds = %21
  %33 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %34 = call i32 @wpabuf_put_u8(%struct.wpabuf* %33, i64 0)
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %39 = load i64, i64* @EAP_ERP_TLV_DOMAIN_NAME, align 8
  %40 = call i32 @wpabuf_put_u8(%struct.wpabuf* %38, i64 %39)
  %41 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @wpabuf_put_u8(%struct.wpabuf* %41, i64 %42)
  %44 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @wpabuf_put_data(%struct.wpabuf* %44, i8* %45, i64 %46)
  br label %48

48:                                               ; preds = %37, %32
  %49 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %49, %struct.wpabuf** %3, align 8
  br label %50

50:                                               ; preds = %48, %31
  %51 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %51
}

declare dso_local i8* @eap_get_erp_domain(%struct.eap_sm*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
