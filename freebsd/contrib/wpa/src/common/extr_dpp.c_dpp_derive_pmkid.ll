; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_derive_pmkid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_derive_pmkid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_curve_params = type { i32 }
%struct.wpabuf = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DPP: PMKID hash payload 1\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"DPP: PMKID hash payload 2\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"DPP: PMKID hash output\00", align 1
@PMKID_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"DPP: PMKID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_curve_params*, i32*, i32*, i32*)* @dpp_derive_pmkid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_derive_pmkid(%struct.dpp_curve_params* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.dpp_curve_params*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32*], align 16
  %14 = alloca [2 x i64], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.dpp_curve_params* %0, %struct.dpp_curve_params** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 -1, i32* %11, align 4
  %17 = load i32, i32* @SHA256_MAC_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %15, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %16, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.wpabuf* @dpp_get_pubkey_point(i32* %21, i32 0)
  store %struct.wpabuf* %22, %struct.wpabuf** %9, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call %struct.wpabuf* @dpp_get_pubkey_point(i32* %23, i32 0)
  store %struct.wpabuf* %24, %struct.wpabuf** %10, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %26 = icmp ne %struct.wpabuf* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %29 = icmp ne %struct.wpabuf* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %4
  br label %102

31:                                               ; preds = %27
  %32 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %33 = call i32* @wpabuf_head(%struct.wpabuf* %32)
  %34 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 0
  store i32* %33, i32** %34, align 16
  %35 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %36 = call i32 @wpabuf_len(%struct.wpabuf* %35)
  %37 = sdiv i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  store i64 %38, i64* %39, align 16
  %40 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %41 = call i32* @wpabuf_head(%struct.wpabuf* %40)
  %42 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 1
  store i32* %41, i32** %42, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %44 = call i32 @wpabuf_len(%struct.wpabuf* %43)
  %45 = sdiv i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %49 = load i64, i64* %48, align 16
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %31
  br label %102

54:                                               ; preds = %31
  %55 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 0
  %56 = load i32*, i32** %55, align 16
  %57 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %60 = load i64, i64* %59, align 16
  %61 = call i64 @os_memcmp(i32* %56, i32* %58, i64 %60)
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %65 = call i32* @wpabuf_head(%struct.wpabuf* %64)
  %66 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 0
  store i32* %65, i32** %66, align 16
  %67 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %68 = call i32* @wpabuf_head(%struct.wpabuf* %67)
  %69 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 1
  store i32* %68, i32** %69, align 8
  br label %70

70:                                               ; preds = %63, %54
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 0
  %73 = load i32*, i32** %72, align 16
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %75 = load i64, i64* %74, align 16
  %76 = trunc i64 %75 to i32
  %77 = call i32 @wpa_hexdump(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %73, i32 %76)
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @wpa_hexdump(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* %80, i32 %83)
  %85 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 0
  %86 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %87 = call i32 @sha256_vector(i32 2, i32** %85, i64* %86, i32* %20)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %70
  br label %102

91:                                               ; preds = %70
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load i32, i32* @SHA256_MAC_LEN, align 4
  %94 = call i32 @wpa_hexdump(i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %20, i32 %93)
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* @PMKID_LEN, align 4
  %97 = call i32 @os_memcpy(i32* %95, i32* %20, i32 %96)
  %98 = load i32, i32* @MSG_DEBUG, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* @PMKID_LEN, align 4
  %101 = call i32 @wpa_hexdump(i32 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %99, i32 %100)
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %91, %90, %53, %30
  %103 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %104 = call i32 @wpabuf_free(%struct.wpabuf* %103)
  %105 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %106 = call i32 @wpabuf_free(%struct.wpabuf* %105)
  %107 = load i32, i32* %11, align 4
  %108 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %108)
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wpabuf* @dpp_get_pubkey_point(i32*, i32) #2

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i32 @sha256_vector(i32, i32**, i64*, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
