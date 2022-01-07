; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_derive_keys_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_derive_keys_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@EAP_SIM_KEYING_DATA_LEN = common dso_local global i32 0, align 4
@EAP_EMSK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"EAP-SIM: Workaround - drop null character from the end of identity\00", align 1
@EAP_SIM_NONCE_S_LEN = common dso_local global i32 0, align 4
@EAP_SIM_MK_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"EAP-SIM: Deriving keying data from reauth\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"EAP-SIM: Identity\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"EAP-SIM: counter\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"EAP-SIM: NONCE_S\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"EAP-SIM: MK\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"EAP-SIM: XKEY'\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"EAP-SIM: Failed to derive keys\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"EAP-SIM: keying material (MSK)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"EAP-SIM: EMSK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_sim_derive_keys_reauth(i32 %0, i64* %1, i64 %2, i64* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [2 x i64], align 16
  %20 = alloca [4 x i64*], align 16
  %21 = alloca [4 x i64], align 16
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %23 = load i32, i32* @SHA1_MAC_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load i32, i32* @EAP_SIM_KEYING_DATA_LEN, align 4
  %28 = load i32, i32* @EAP_EMSK_LEN, align 4
  %29 = add nsw i32 %27, %28
  %30 = add nsw i32 %29, 32
  %31 = zext i32 %30 to i64
  %32 = alloca i64, i64 %31, align 16
  store i64 %31, i64* %18, align 8
  br label %33

33:                                               ; preds = %45, %7
  %34 = load i64, i64* %11, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i64*, i64** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br label %43

43:                                               ; preds = %36, %33
  %44 = phi i1 [ false, %33 ], [ %42, %36 ]
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %11, align 8
  br label %33

50:                                               ; preds = %43
  %51 = load i64*, i64** %10, align 8
  %52 = getelementptr inbounds [4 x i64*], [4 x i64*]* %20, i64 0, i64 0
  store i64* %51, i64** %52, align 16
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  store i64 %53, i64* %54, align 16
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %56 = getelementptr inbounds [4 x i64*], [4 x i64*]* %20, i64 0, i64 1
  store i64* %55, i64** %56, align 8
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 1
  store i64 2, i64* %57, align 8
  %58 = load i64*, i64** %12, align 8
  %59 = getelementptr inbounds [4 x i64*], [4 x i64*]* %20, i64 0, i64 2
  store i64* %58, i64** %59, align 16
  %60 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 2
  store i64 %61, i64* %62, align 16
  %63 = load i64*, i64** %13, align 8
  %64 = getelementptr inbounds [4 x i64*], [4 x i64*]* %20, i64 0, i64 3
  store i64* %63, i64** %64, align 8
  %65 = load i64, i64* @EAP_SIM_MK_LEN, align 8
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 3
  store i64 %65, i64* %66, align 8
  %67 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @WPA_PUT_BE16(i64* %67, i32 %68)
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = load i64*, i64** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @wpa_hexdump_ascii(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64* %73, i64 %74)
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %78 = call i32 @wpa_hexdump(i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64* %77, i32 2)
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = load i64*, i64** %12, align 8
  %81 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %82 = call i32 @wpa_hexdump(i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64* %80, i32 %81)
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = load i64*, i64** %13, align 8
  %85 = load i64, i64* @EAP_SIM_MK_LEN, align 8
  %86 = call i32 @wpa_hexdump_key(i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64* %84, i64 %85)
  %87 = getelementptr inbounds [4 x i64*], [4 x i64*]* %20, i64 0, i64 0
  %88 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %89 = call i32 @sha1_vector(i32 4, i64** %87, i64* %88, i64* %26)
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load i32, i32* @SHA1_MAC_LEN, align 4
  %92 = call i32 @wpa_hexdump(i32 %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64* %26, i32 %91)
  %93 = mul nuw i64 8, %31
  %94 = trunc i64 %93 to i32
  %95 = call i64 @eap_sim_prf(i64* %26, i64* %32, i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %50
  %98 = load i32, i32* @MSG_ERROR, align 4
  %99 = call i32 @wpa_printf(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %129

100:                                              ; preds = %50
  %101 = load i64*, i64** %14, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i64*, i64** %14, align 8
  %105 = load i32, i32* @EAP_SIM_KEYING_DATA_LEN, align 4
  %106 = call i32 @os_memcpy(i64* %104, i64* %32, i32 %105)
  %107 = load i32, i32* @MSG_DEBUG, align 4
  %108 = load i64*, i64** %14, align 8
  %109 = load i32, i32* @EAP_SIM_KEYING_DATA_LEN, align 4
  %110 = call i32 @wpa_hexdump(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i64* %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %100
  %112 = load i64*, i64** %15, align 8
  %113 = icmp ne i64* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load i64*, i64** %15, align 8
  %116 = load i32, i32* @EAP_SIM_KEYING_DATA_LEN, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %32, i64 %117
  %119 = load i32, i32* @EAP_EMSK_LEN, align 4
  %120 = call i32 @os_memcpy(i64* %115, i64* %118, i32 %119)
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = load i64*, i64** %15, align 8
  %123 = load i32, i32* @EAP_EMSK_LEN, align 4
  %124 = call i32 @wpa_hexdump(i32 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i64* %122, i32 %123)
  br label %125

125:                                              ; preds = %114, %111
  %126 = mul nuw i64 8, %31
  %127 = trunc i64 %126 to i32
  %128 = call i32 @os_memset(i64* %32, i32 0, i32 %127)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %129

129:                                              ; preds = %125, %97
  %130 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @WPA_PUT_BE16(i64*, i32) #2

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i64*, i64) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64*, i64) #2

declare dso_local i32 @sha1_vector(i32, i64**, i64*, i64*) #2

declare dso_local i64 @eap_sim_prf(i64*, i64*, i32) #2

declare dso_local i32 @os_memcpy(i64*, i64*, i32) #2

declare dso_local i32 @os_memset(i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
