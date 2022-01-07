; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_check_pubkey_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_check_pubkey_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"DPP: Uncompressed public key\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"DPP: Received hash value does not match calculated public key hash value\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"DPP: Calculated hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.wpabuf*)* @dpp_check_pubkey_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_check_pubkey_match(i32* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [1 x i32*], align 8
  %11 = alloca [1 x i64], align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %13 = load i32, i32* @SHA256_MAC_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = call i32 @wpabuf_len(%struct.wpabuf* %17)
  %19 = load i32, i32* @SHA256_MAC_LEN, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %64

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.wpabuf* @dpp_get_pubkey_point(i32* %23, i32 1)
  store %struct.wpabuf* %24, %struct.wpabuf** %6, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %26 = icmp ne %struct.wpabuf* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %64

28:                                               ; preds = %22
  %29 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %30 = call i32* @wpabuf_head(%struct.wpabuf* %29)
  %31 = getelementptr inbounds [1 x i32*], [1 x i32*]* %10, i64 0, i64 0
  store i32* %30, i32** %31, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %33 = call i32 @wpabuf_len(%struct.wpabuf* %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = getelementptr inbounds [1 x i32*], [1 x i32*]* %10, i64 0, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @wpa_hexdump(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %38, i32 %41)
  %43 = getelementptr inbounds [1 x i32*], [1 x i32*]* %10, i64 0, i64 0
  %44 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %45 = call i32 @sha256_vector(i32 1, i32** %43, i64* %44, i32* %16)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %47 = call i32 @wpabuf_free(%struct.wpabuf* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %64

51:                                               ; preds = %28
  %52 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %53 = call i32* @wpabuf_head(%struct.wpabuf* %52)
  %54 = load i32, i32* @SHA256_MAC_LEN, align 4
  %55 = call i64 @os_memcmp(i32* %16, i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 @wpa_printf(i32 %58, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i32, i32* @SHA256_MAC_LEN, align 4
  %62 = call i32 @wpa_hexdump(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %16, i32 %61)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %64

63:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %63, %57, %50, %27, %21
  %65 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local %struct.wpabuf* @dpp_get_pubkey_point(i32*, i32) #2

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i32 @sha256_vector(i32, i32**, i64*, i32*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
