; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_pwd_data = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PWD = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-pwd: Invalid frame\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"EAP-pwd: Received frame: exch = %d, len = %d\00", align 1
@PWD_ID_Req = common dso_local global i32 0, align 4
@EAP_PWD_OPCODE_ID_EXCH = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@PWD_Commit_Req = common dso_local global i32 0, align 4
@EAP_PWD_OPCODE_COMMIT_EXCH = common dso_local global i64 0, align 8
@PWD_Confirm_Req = common dso_local global i32 0, align 4
@EAP_PWD_OPCODE_CONFIRM_EXCH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"EAP-pwd: Unexpected opcode=%d in state=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_pwd_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_pwd_check(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_pwd_data*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.eap_pwd_data*
  store %struct.eap_pwd_data* %12, %struct.eap_pwd_data** %8, align 8
  %13 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %14 = load i32, i32* @EAP_TYPE_PWD, align 4
  %15 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %16 = call i64* @eap_hdr_validate(i32 %13, i32 %14, %struct.wpabuf* %15, i64* %10)
  store i64* %16, i64** %9, align 8
  %17 = load i64*, i64** %9, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %10, align 8
  %21 = icmp ult i64 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @MSG_INFO, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %4, align 4
  br label %84

26:                                               ; preds = %19
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load i64*, i64** %9, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @EAP_PWD_GET_EXCHANGE(i64 %29)
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %30, i32 %32)
  %34 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %35 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PWD_ID_Req, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %26
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @EAP_PWD_GET_EXCHANGE(i64 %41)
  %43 = load i64, i64* @EAP_PWD_OPCODE_ID_EXCH, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %84

47:                                               ; preds = %39, %26
  %48 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %49 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PWD_Commit_Req, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @EAP_PWD_GET_EXCHANGE(i64 %55)
  %57 = load i64, i64* @EAP_PWD_OPCODE_COMMIT_EXCH, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %4, align 4
  br label %84

61:                                               ; preds = %53, %47
  %62 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %63 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PWD_Confirm_Req, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i64*, i64** %9, align 8
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @EAP_PWD_GET_EXCHANGE(i64 %69)
  %71 = load i64, i64* @EAP_PWD_OPCODE_CONFIRM_EXCH, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %4, align 4
  br label %84

75:                                               ; preds = %67, %61
  %76 = load i32, i32* @MSG_INFO, align 4
  %77 = load i64*, i64** %9, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %80 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %78, i32 %81)
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %75, %73, %59, %45, %22
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @EAP_PWD_GET_EXCHANGE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
