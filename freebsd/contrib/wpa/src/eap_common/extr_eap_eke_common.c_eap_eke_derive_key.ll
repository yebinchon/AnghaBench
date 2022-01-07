; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_derive_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_derive_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_eke_session = type { i64, i32 }

@EAP_EKE_MAX_HASH_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-EKE: temp = prf(0+, password)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"EAP-EKE: ID_S | ID_P\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"EAP-EKE: key = prf+(temp, ID_S | ID_P)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_eke_derive_key(%struct.eap_eke_session* %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.eap_eke_session*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.eap_eke_session* %0, %struct.eap_eke_session** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load i32, i32* @EAP_EKE_MAX_HASH_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %28 = load i32, i32* @EAP_EKE_MAX_HASH_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %20, align 8
  store i64 16, i64* %21, align 8
  %31 = load %struct.eap_eke_session*, %struct.eap_eke_session** %10, align 8
  %32 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @os_memset(i32* %27, i32 0, i64 %33)
  %35 = load %struct.eap_eke_session*, %struct.eap_eke_session** %10, align 8
  %36 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.eap_eke_session*, %struct.eap_eke_session** %10, align 8
  %39 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @eap_eke_prf(i32 %37, i32* %27, i64 %40, i32* %41, i64 %42, i32* null, i32 0, i32* %30)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %100

46:                                               ; preds = %8
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load %struct.eap_eke_session*, %struct.eap_eke_session** %10, align 8
  %49 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @wpa_hexdump_key(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %30, i64 %50)
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %16, align 8
  %54 = add i64 %52, %53
  %55 = call i32* @os_malloc(i64 %54)
  store i32* %55, i32** %22, align 8
  %56 = load i32*, i32** %22, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %100

59:                                               ; preds = %46
  %60 = load i32*, i32** %22, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i32 @os_memcpy(i32* %60, i32* %61, i64 %62)
  %64 = load i32*, i32** %22, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32*, i32** %15, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i32 @os_memcpy(i32* %66, i32* %67, i64 %68)
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = load i32*, i32** %22, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %16, align 8
  %74 = add i64 %72, %73
  %75 = call i32 @wpa_hexdump_ascii(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %71, i64 %74)
  %76 = load %struct.eap_eke_session*, %struct.eap_eke_session** %10, align 8
  %77 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.eap_eke_session*, %struct.eap_eke_session** %10, align 8
  %80 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32*, i32** %22, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %16, align 8
  %85 = add i64 %83, %84
  %86 = load i32*, i32** %17, align 8
  %87 = load i64, i64* %21, align 8
  %88 = call i64 @eap_eke_prfplus(i32 %78, i32* %30, i64 %81, i32* %82, i64 %85, i32* %86, i64 %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %59
  %91 = load i32*, i32** %22, align 8
  %92 = call i32 @os_free(i32* %91)
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %100

93:                                               ; preds = %59
  %94 = load i32*, i32** %22, align 8
  %95 = call i32 @os_free(i32* %94)
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load i32*, i32** %17, align 8
  %98 = load i64, i64* %21, align 8
  %99 = call i32 @wpa_hexdump_key(i32 %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32* %97, i64 %98)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %100

100:                                              ; preds = %93, %90, %58, %45
  %101 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i32*, i32, i64) #2

declare dso_local i64 @eap_eke_prf(i32, i32*, i64, i32*, i64, i32*, i32, i32*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #2

declare dso_local i32* @os_malloc(i64) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #2

declare dso_local i64 @eap_eke_prfplus(i32, i32*, i64, i32*, i64, i32*, i64) #2

declare dso_local i32 @os_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
