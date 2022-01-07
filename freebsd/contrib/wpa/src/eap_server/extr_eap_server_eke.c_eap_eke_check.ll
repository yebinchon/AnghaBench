; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_eke_data = type { i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_EKE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-EKE: Invalid frame\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"EAP-EKE: Received frame: EKE-Exch=%d\00", align 1
@IDENTITY = common dso_local global i64 0, align 8
@EAP_EKE_ID = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@COMMIT = common dso_local global i64 0, align 8
@EAP_EKE_COMMIT = common dso_local global i64 0, align 8
@CONFIRM = common dso_local global i64 0, align 8
@EAP_EKE_CONFIRM = common dso_local global i64 0, align 8
@EAP_EKE_FAILURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"EAP-EKE: Unexpected EKE-Exch=%d in state=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_eke_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_eke_check(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_eke_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.eap_eke_data*
  store %struct.eap_eke_data* %13, %struct.eap_eke_data** %8, align 8
  %14 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %15 = load i32, i32* @EAP_TYPE_EKE, align 4
  %16 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %17 = call i64* @eap_hdr_validate(i32 %14, i32 %15, %struct.wpabuf* %16, i64* %9)
  store i64* %17, i64** %10, align 8
  %18 = load i64*, i64** %10, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %4, align 4
  br label %82

27:                                               ; preds = %20
  %28 = load i64*, i64** %10, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i64, i64* %11, align 8
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load %struct.eap_eke_data*, %struct.eap_eke_data** %8, align 8
  %34 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IDENTITY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @EAP_EKE_ID, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %4, align 4
  br label %82

44:                                               ; preds = %38, %27
  %45 = load %struct.eap_eke_data*, %struct.eap_eke_data** %8, align 8
  %46 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @COMMIT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @EAP_EKE_COMMIT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %4, align 4
  br label %82

56:                                               ; preds = %50, %44
  %57 = load %struct.eap_eke_data*, %struct.eap_eke_data** %8, align 8
  %58 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CONFIRM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @EAP_EKE_CONFIRM, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %4, align 4
  br label %82

68:                                               ; preds = %62, %56
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @EAP_EKE_FAILURE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %4, align 4
  br label %82

74:                                               ; preds = %68
  %75 = load i32, i32* @MSG_INFO, align 4
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.eap_eke_data*, %struct.eap_eke_data** %8, align 8
  %78 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %76, i64 %79)
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %74, %72, %66, %54, %42, %23
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
