; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_mschapv2_data = type { i64 }
%struct.eap_mschapv2_hdr = type { i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_MSCHAPV2 = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EAP-MSCHAPV2: Invalid frame\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CHALLENGE = common dso_local global i64 0, align 8
@MSCHAPV2_OP_RESPONSE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"EAP-MSCHAPV2: Expected Response - ignore op %d\00", align 1
@SUCCESS_REQ = common dso_local global i64 0, align 8
@MSCHAPV2_OP_SUCCESS = common dso_local global i64 0, align 8
@MSCHAPV2_OP_FAILURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"EAP-MSCHAPV2: Expected Success or Failure - ignore op %d\00", align 1
@FAILURE_REQ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"EAP-MSCHAPV2: Expected Failure - ignore op %d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_mschapv2_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_mschapv2_check(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_mschapv2_data*, align 8
  %9 = alloca %struct.eap_mschapv2_hdr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.eap_mschapv2_data*
  store %struct.eap_mschapv2_data* %13, %struct.eap_mschapv2_data** %8, align 8
  %14 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %15 = load i32, i32* @EAP_TYPE_MSCHAPV2, align 4
  %16 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %17 = call i32* @eap_hdr_validate(i32 %14, i32 %15, %struct.wpabuf* %16, i64* %11)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %11, align 8
  %22 = icmp ult i64 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %4, align 4
  br label %94

27:                                               ; preds = %20
  %28 = load i32*, i32** %10, align 8
  %29 = bitcast i32* %28 to %struct.eap_mschapv2_hdr*
  store %struct.eap_mschapv2_hdr* %29, %struct.eap_mschapv2_hdr** %9, align 8
  %30 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %8, align 8
  %31 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CHALLENGE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %37 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MSCHAPV2_OP_RESPONSE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %44 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %4, align 4
  br label %94

48:                                               ; preds = %35, %27
  %49 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %8, align 8
  %50 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SUCCESS_REQ, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %56 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MSCHAPV2_OP_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %62 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MSCHAPV2_OP_FAILURE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %69 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %4, align 4
  br label %94

73:                                               ; preds = %60, %54, %48
  %74 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %8, align 8
  %75 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @FAILURE_REQ, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %81 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MSCHAPV2_OP_FAILURE, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %88 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %4, align 4
  br label %94

92:                                               ; preds = %79, %73
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %85, %66, %41, %23
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
