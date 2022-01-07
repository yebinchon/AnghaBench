; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_tlv_validate_cryptobinding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_tlv_validate_cryptobinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32, i32 }

@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"EAP-PEAP: Invalid cryptobinding TLV length %d\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"EAP-PEAP: Cryptobinding TLV Version mismatch (was %d; expected %d)\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"EAP-PEAP: Unexpected Cryptobinding TLV SubType %d\00", align 1
@EAP_TYPE_PEAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"EAP-PEAP: Invalid Compound_MAC in cryptobinding TLV\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"EAP-PEAP: CMK\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"EAP-PEAP: Cryptobinding seed data\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"EAP-PEAP: Valid cryptobinding TLV received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_peap_data*, i32*, i64)* @eap_tlv_validate_cryptobinding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tlv_validate_cryptobinding(%struct.eap_sm* %0, %struct.eap_peap_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_peap_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [61 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @SHA1_MAC_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 60
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %95

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %34 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %43 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %95

46:                                               ; preds = %26
  %47 = load i32*, i32** %13, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %95

57:                                               ; preds = %46
  %58 = load i32*, i32** %13, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 32
  store i32* %61, i32** %13, align 8
  %62 = getelementptr inbounds [61 x i32], [61 x i32]* %10, i64 0, i64 0
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @os_memcpy(i32* %62, i32* %63, i32 60)
  %65 = getelementptr inbounds [61 x i32], [61 x i32]* %10, i64 0, i64 0
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = getelementptr inbounds i32, i32* %67, i64 32
  %69 = call i32 @os_memset(i32* %68, i32 0, i32 20)
  %70 = load i32, i32* @EAP_TYPE_PEAP, align 4
  %71 = getelementptr inbounds [61 x i32], [61 x i32]* %10, i64 0, i64 60
  store i32 %70, i32* %71, align 16
  %72 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %73 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [61 x i32], [61 x i32]* %10, i64 0, i64 0
  %76 = call i32 @hmac_sha1(i32 %74, i32 20, i32* %75, i32 244, i32* %18)
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* @SHA1_MAC_LEN, align 4
  %79 = call i64 @os_memcmp_const(i32* %18, i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %57
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %86 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @wpa_hexdump_key(i32 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 20)
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = getelementptr inbounds [61 x i32], [61 x i32]* %10, i64 0, i64 0
  %91 = call i32 @wpa_hexdump(i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32* %90, i32 61)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %95

92:                                               ; preds = %57
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %95

95:                                               ; preds = %92, %81, %51, %37, %21
  %96 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @hmac_sha1(i32, i32, i32*, i32, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
