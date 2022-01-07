; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_derive_ke_ki.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_derive_ke_ki.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_eke_session = type { i64, i64, i8*, i8*, i32, i32, i32 }

@EAP_EKE_MAX_KE_LEN = common dso_local global i32 0, align 4
@EAP_EKE_MAX_KI_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"EAP-EKE Keys\00", align 1
@EAP_EKE_ENCR_AES128_CBC = common dso_local global i64 0, align 8
@EAP_EKE_PRF_HMAC_SHA1 = common dso_local global i64 0, align 8
@EAP_EKE_PRF_HMAC_SHA2_256 = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"EAP-EKE: Ke\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"EAP-EKE: Ki\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_eke_derive_ke_ki(%struct.eap_eke_session* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_eke_session*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.eap_eke_session* %0, %struct.eap_eke_session** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load i32, i32* @EAP_EKE_MAX_KE_LEN, align 4
  %22 = load i32, i32* @EAP_EKE_MAX_KI_LEN, align 4
  %23 = add nsw i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %27 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %28 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EAP_EKE_ENCR_AES128_CBC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i64 16, i64* %14, align 8
  br label %34

33:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %128

34:                                               ; preds = %32
  %35 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %36 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA1, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i64 20, i64* %15, align 8
  br label %50

41:                                               ; preds = %34
  %42 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %43 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA2_256, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i64 32, i64* %15, align 8
  br label %49

48:                                               ; preds = %41
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %128

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i8*, i8** %18, align 8
  %52 = call i64 @os_strlen(i8* %51)
  store i64 %52, i64* %19, align 8
  %53 = load i64, i64* %19, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %55, %56
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* %17, align 8
  %59 = call i8* @os_malloc(i64 %58)
  store i8* %59, i8** %16, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %128

63:                                               ; preds = %50
  %64 = load i8*, i8** %16, align 8
  %65 = load i8*, i8** %18, align 8
  %66 = load i64, i64* %19, align 8
  %67 = call i32 @os_memcpy(i8* %64, i8* %65, i64 %66)
  %68 = load i8*, i8** %16, align 8
  %69 = load i64, i64* %19, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @os_memcpy(i8* %70, i8* %71, i64 %72)
  %74 = load i8*, i8** %16, align 8
  %75 = load i64, i64* %19, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8*, i8** %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @os_memcpy(i8* %78, i8* %79, i64 %80)
  %82 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %83 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %86 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %89 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* %15, align 8
  %95 = add i64 %93, %94
  %96 = call i64 @eap_eke_prfplus(i32 %84, i32 %87, i32 %90, i8* %91, i64 %92, i8* %26, i64 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %63
  %99 = load i8*, i8** %16, align 8
  %100 = call i32 @os_free(i8* %99)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %128

101:                                              ; preds = %63
  %102 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %103 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* %14, align 8
  %106 = call i32 @os_memcpy(i8* %104, i8* %26, i64 %105)
  %107 = load i32, i32* @MSG_DEBUG, align 4
  %108 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %109 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load i64, i64* %14, align 8
  %112 = call i32 @wpa_hexdump_key(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %110, i64 %111)
  %113 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %114 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds i8, i8* %26, i64 %116
  %118 = load i64, i64* %15, align 8
  %119 = call i32 @os_memcpy(i8* %115, i8* %117, i64 %118)
  %120 = load i32, i32* @MSG_DEBUG, align 4
  %121 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %122 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load i64, i64* %15, align 8
  %125 = call i32 @wpa_hexdump_key(i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %123, i64 %124)
  %126 = load i8*, i8** %16, align 8
  %127 = call i32 @os_free(i8* %126)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %128

128:                                              ; preds = %101, %98, %62, %48, %33
  %129 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i8* @os_malloc(i64) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #2

declare dso_local i64 @eap_eke_prfplus(i32, i32, i32, i8*, i64, i8*, i64) #2

declare dso_local i32 @os_free(i8*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
