; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_derive_msk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_derive_msk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_eke_session = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"EAP-EKE Exported Keys\00", align 1
@EAP_MSK_LEN = common dso_local global i32 0, align 4
@EAP_EMSK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"EAP-EKE: MSK\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"EAP-EKE: EMSK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_eke_derive_msk(%struct.eap_eke_session* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i8* %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.eap_eke_session*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.eap_eke_session* %0, %struct.eap_eke_session** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %28 = load i32, i32* @EAP_MSK_LEN, align 4
  %29 = load i32, i32* @EAP_EMSK_LEN, align 4
  %30 = add nsw i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %25, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %26, align 8
  %34 = load i8*, i8** %23, align 8
  %35 = call i64 @os_strlen(i8* %34)
  store i64 %35, i64* %24, align 8
  %36 = load i64, i64* %24, align 8
  %37 = load i64, i64* %13, align 8
  %38 = add i64 %36, %37
  %39 = load i64, i64* %15, align 8
  %40 = add i64 %38, %39
  %41 = load %struct.eap_eke_session*, %struct.eap_eke_session** %11, align 8
  %42 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 2, %43
  %45 = sext i32 %44 to i64
  %46 = add i64 %40, %45
  store i64 %46, i64* %22, align 8
  %47 = load i64, i64* %22, align 8
  %48 = call i8* @os_malloc(i64 %47)
  store i8* %48, i8** %20, align 8
  %49 = load i8*, i8** %20, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %27, align 4
  br label %137

52:                                               ; preds = %9
  %53 = load i8*, i8** %20, align 8
  store i8* %53, i8** %21, align 8
  %54 = load i8*, i8** %21, align 8
  %55 = load i8*, i8** %23, align 8
  %56 = load i64, i64* %24, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @os_memcpy(i8* %54, i8* %55, i32 %57)
  %59 = load i64, i64* %24, align 8
  %60 = load i8*, i8** %21, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %21, align 8
  %62 = load i8*, i8** %21, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @os_memcpy(i8* %62, i8* %63, i32 %65)
  %67 = load i64, i64* %13, align 8
  %68 = load i8*, i8** %21, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %21, align 8
  %70 = load i8*, i8** %21, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load i64, i64* %15, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @os_memcpy(i8* %70, i8* %71, i32 %73)
  %75 = load i64, i64* %15, align 8
  %76 = load i8*, i8** %21, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 %75
  store i8* %77, i8** %21, align 8
  %78 = load i8*, i8** %21, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = load %struct.eap_eke_session*, %struct.eap_eke_session** %11, align 8
  %81 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @os_memcpy(i8* %78, i8* %79, i32 %82)
  %84 = load %struct.eap_eke_session*, %struct.eap_eke_session** %11, align 8
  %85 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %21, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %21, align 8
  %90 = load i8*, i8** %21, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = load %struct.eap_eke_session*, %struct.eap_eke_session** %11, align 8
  %93 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @os_memcpy(i8* %90, i8* %91, i32 %94)
  %96 = load %struct.eap_eke_session*, %struct.eap_eke_session** %11, align 8
  %97 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.eap_eke_session*, %struct.eap_eke_session** %11, align 8
  %100 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.eap_eke_session*, %struct.eap_eke_session** %11, align 8
  %103 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %20, align 8
  %106 = load i64, i64* %22, align 8
  %107 = load i32, i32* @EAP_MSK_LEN, align 4
  %108 = load i32, i32* @EAP_EMSK_LEN, align 4
  %109 = add nsw i32 %107, %108
  %110 = call i64 @eap_eke_prfplus(i32 %98, i32 %101, i32 %104, i8* %105, i64 %106, i8* %33, i32 %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %52
  %113 = load i8*, i8** %20, align 8
  %114 = call i32 @os_free(i8* %113)
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %27, align 4
  br label %137

115:                                              ; preds = %52
  %116 = load i8*, i8** %20, align 8
  %117 = call i32 @os_free(i8* %116)
  %118 = load i8*, i8** %18, align 8
  %119 = load i32, i32* @EAP_MSK_LEN, align 4
  %120 = call i32 @os_memcpy(i8* %118, i8* %33, i32 %119)
  %121 = load i8*, i8** %19, align 8
  %122 = load i32, i32* @EAP_MSK_LEN, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %33, i64 %123
  %125 = load i32, i32* @EAP_EMSK_LEN, align 4
  %126 = call i32 @os_memcpy(i8* %121, i8* %124, i32 %125)
  %127 = trunc i64 %31 to i32
  %128 = call i32 @os_memset(i8* %33, i32 0, i32 %127)
  %129 = load i32, i32* @MSG_DEBUG, align 4
  %130 = load i8*, i8** %18, align 8
  %131 = load i32, i32* @EAP_MSK_LEN, align 4
  %132 = call i32 @wpa_hexdump_key(i32 %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %130, i32 %131)
  %133 = load i32, i32* @MSG_DEBUG, align 4
  %134 = load i8*, i8** %18, align 8
  %135 = load i32, i32* @EAP_EMSK_LEN, align 4
  %136 = call i32 @wpa_hexdump_key(i32 %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %134, i32 %135)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %27, align 4
  br label %137

137:                                              ; preds = %115, %112, %51
  %138 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %10, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i8* @os_malloc(i64) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #2

declare dso_local i64 @eap_eke_prfplus(i32, i32, i32, i8*, i64, i8*, i32) #2

declare dso_local i32 @os_free(i8*) #2

declare dso_local i32 @os_memset(i8*, i32, i32) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
