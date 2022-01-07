; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sake_data = type { i64, i64 }
%struct.eap_sake_hdr = type { i64, i64, i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_SAKE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"EAP-SAKE: Invalid frame\00", align 1
@TRUE = common dso_local global i32 0, align 4
@EAP_SAKE_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"EAP-SAKE: Unknown version %d\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"EAP-SAKE: Session ID mismatch (%d,%d)\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"EAP-SAKE: Received frame: subtype=%d\00", align 1
@IDENTITY = common dso_local global i64 0, align 8
@EAP_SAKE_SUBTYPE_IDENTITY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CHALLENGE = common dso_local global i64 0, align 8
@EAP_SAKE_SUBTYPE_CHALLENGE = common dso_local global i64 0, align 8
@CONFIRM = common dso_local global i64 0, align 8
@EAP_SAKE_SUBTYPE_CONFIRM = common dso_local global i64 0, align 8
@EAP_SAKE_SUBTYPE_AUTH_REJECT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"EAP-SAKE: Unexpected subtype=%d in state=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_sake_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_sake_check(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sake_data*, align 8
  %9 = alloca %struct.eap_sake_hdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.eap_sake_data*
  store %struct.eap_sake_data* %16, %struct.eap_sake_data** %8, align 8
  %17 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %18 = load i32, i32* @EAP_TYPE_SAKE, align 4
  %19 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %20 = call i64* @eap_hdr_validate(i32 %17, i32 %18, %struct.wpabuf* %19, i64* %10)
  store i64* %20, i64** %14, align 8
  %21 = load i64*, i64** %14, align 8
  %22 = icmp eq i64* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %24, 24
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %3
  %27 = load i32, i32* @MSG_INFO, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %4, align 4
  br label %117

30:                                               ; preds = %23
  %31 = load i64*, i64** %14, align 8
  %32 = bitcast i64* %31 to %struct.eap_sake_hdr*
  store %struct.eap_sake_hdr* %32, %struct.eap_sake_hdr** %9, align 8
  %33 = load %struct.eap_sake_hdr*, %struct.eap_sake_hdr** %9, align 8
  %34 = getelementptr inbounds %struct.eap_sake_hdr, %struct.eap_sake_hdr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load %struct.eap_sake_hdr*, %struct.eap_sake_hdr** %9, align 8
  %37 = getelementptr inbounds %struct.eap_sake_hdr, %struct.eap_sake_hdr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load %struct.eap_sake_hdr*, %struct.eap_sake_hdr** %9, align 8
  %40 = getelementptr inbounds %struct.eap_sake_hdr, %struct.eap_sake_hdr* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @EAP_SAKE_VERSION, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load i32, i32* @MSG_INFO, align 4
  %47 = load i64, i64* %11, align 8
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %4, align 4
  br label %117

50:                                               ; preds = %30
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.eap_sake_data*, %struct.eap_sake_data** %8, align 8
  %53 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i32, i32* @MSG_INFO, align 4
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.eap_sake_data*, %struct.eap_sake_data** %8, align 8
  %60 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %58, i64 %61)
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %4, align 4
  br label %117

64:                                               ; preds = %50
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = load i64, i64* %13, align 8
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load %struct.eap_sake_data*, %struct.eap_sake_data** %8, align 8
  %69 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IDENTITY, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @EAP_SAKE_SUBTYPE_IDENTITY, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %4, align 4
  br label %117

79:                                               ; preds = %73, %64
  %80 = load %struct.eap_sake_data*, %struct.eap_sake_data** %8, align 8
  %81 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CHALLENGE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @EAP_SAKE_SUBTYPE_CHALLENGE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %4, align 4
  br label %117

91:                                               ; preds = %85, %79
  %92 = load %struct.eap_sake_data*, %struct.eap_sake_data** %8, align 8
  %93 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CONFIRM, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* @EAP_SAKE_SUBTYPE_CONFIRM, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %4, align 4
  br label %117

103:                                              ; preds = %97, %91
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* @EAP_SAKE_SUBTYPE_AUTH_REJECT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %4, align 4
  br label %117

109:                                              ; preds = %103
  %110 = load i32, i32* @MSG_INFO, align 4
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.eap_sake_data*, %struct.eap_sake_data** %8, align 8
  %113 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %110, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %111, i64 %114)
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %109, %107, %101, %89, %77, %56, %45, %26
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i64* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
