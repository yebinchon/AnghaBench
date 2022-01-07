; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_psk_data = type { i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PSK = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-PSK: Invalid frame\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"EAP-PSK: received frame: T=%d\00", align 1
@PSK_1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"EAP-PSK: Expected PSK-2 - ignore T=%d\00", align 1
@PSK_3 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"EAP-PSK: Expected PSK-4 - ignore T=%d\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"EAP-PSK: Too short frame\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_psk_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_psk_check(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_psk_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.eap_psk_data*
  store %struct.eap_psk_data* %13, %struct.eap_psk_data** %8, align 8
  %14 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %15 = load i32, i32* @EAP_TYPE_PSK, align 4
  %16 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %17 = call i32* @eap_hdr_validate(i32 %14, i32 %15, %struct.wpabuf* %16, i64* %9)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp eq i32* %18, null
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
  br label %79

27:                                               ; preds = %20
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @EAP_PSK_FLAGS_GET_T(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.eap_psk_data*, %struct.eap_psk_data** %8, align 8
  %35 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PSK_1, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %4, align 4
  br label %79

47:                                               ; preds = %39, %27
  %48 = load %struct.eap_psk_data*, %struct.eap_psk_data** %8, align 8
  %49 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PSK_3, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 3
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %4, align 4
  br label %79

61:                                               ; preds = %53, %47
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i64, i64* %9, align 8
  %66 = icmp ult i64 %65, 4
  br i1 %66, label %73, label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i64, i64* %9, align 8
  %72 = icmp ult i64 %71, 4
  br i1 %72, label %73, label %77

73:                                               ; preds = %70, %64
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %4, align 4
  br label %79

77:                                               ; preds = %70, %67
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %73, %56, %42, %23
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @EAP_PSK_FLAGS_GET_T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
