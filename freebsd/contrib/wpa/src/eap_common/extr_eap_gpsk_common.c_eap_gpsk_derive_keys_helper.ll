; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_gpsk_common.c_eap_gpsk_derive_keys_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_gpsk_common.c_eap_gpsk_derive_keys_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAP_GPSK_VENDOR_IETF = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"EAP-GPSK: Data to MK derivation\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"EAP-GPSK: MK\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"EAP-GPSK: MSK\00", align 1
@EAP_MSK_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"EAP-GPSK: EMSK\00", align 1
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"EAP-GPSK: SK\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"EAP-GPSK: PK\00", align 1
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i64, i32*, i64, i32*, i64, i32*, i32*, i32*, i64, i32*, i64)* @eap_gpsk_derive_keys_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_gpsk_derive_keys_helper(i64 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5, i64 %6, i32* %7, i32* %8, i32* %9, i64 %10, i32* %11, i64 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca [32 x i32], align 16
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32 (i32*, i32*, i64, i32*, i64)*, align 8
  store i64 %0, i64* %15, align 8
  store i32* %1, i32** %16, align 8
  store i64 %2, i64* %17, align 8
  store i32* %3, i32** %18, align 8
  store i64 %4, i64* %19, align 8
  store i32* %5, i32** %20, align 8
  store i64 %6, i64* %21, align 8
  store i32* %7, i32** %22, align 8
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i64 %10, i64* %25, align 8
  store i32* %11, i32** %26, align 8
  store i64 %12, i64* %27, align 8
  store i32 (i32*, i32*, i64, i32*, i64)* null, i32 (i32*, i32*, i64, i32*, i64)** %33, align 8
  %34 = load i64, i64* %15, align 8
  switch i64 %34, label %36 [
    i64 129, label %35
  ]

35:                                               ; preds = %13
  store i32 (i32*, i32*, i64, i32*, i64)* @eap_gpsk_gkdf_cmac, i32 (i32*, i32*, i64, i32*, i64)** %33, align 8
  store i64 16, i64* %32, align 8
  br label %37

36:                                               ; preds = %13
  store i32 -1, i32* %14, align 4
  br label %159

37:                                               ; preds = %35
  %38 = load i64, i64* %19, align 8
  %39 = load i64, i64* %32, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %14, align 4
  br label %159

42:                                               ; preds = %37
  %43 = load i64, i64* %19, align 8
  %44 = add i64 2, %43
  %45 = add i64 %44, 6
  %46 = load i64, i64* %21, align 8
  %47 = add i64 %45, %46
  store i64 %47, i64* %31, align 8
  %48 = load i64, i64* %31, align 8
  %49 = call i32* @os_malloc(i64 %48)
  store i32* %49, i32** %30, align 8
  %50 = load i32*, i32** %30, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 -1, i32* %14, align 4
  br label %159

53:                                               ; preds = %42
  %54 = load i32*, i32** %30, align 8
  store i32* %54, i32** %29, align 8
  %55 = load i32*, i32** %29, align 8
  %56 = load i64, i64* %19, align 8
  %57 = call i32 @WPA_PUT_BE16(i32* %55, i64 %56)
  %58 = load i32*, i32** %29, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32* %59, i32** %29, align 8
  %60 = load i32*, i32** %29, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = load i64, i64* %19, align 8
  %63 = call i32 @os_memcpy(i32* %60, i32* %61, i64 %62)
  %64 = load i64, i64* %19, align 8
  %65 = load i32*, i32** %29, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  store i32* %66, i32** %29, align 8
  %67 = load i32*, i32** %29, align 8
  %68 = load i32, i32* @EAP_GPSK_VENDOR_IETF, align 4
  %69 = call i32 @WPA_PUT_BE32(i32* %67, i32 %68)
  %70 = load i32*, i32** %29, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32* %71, i32** %29, align 8
  %72 = load i32*, i32** %29, align 8
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @WPA_PUT_BE16(i32* %72, i64 %73)
  %75 = load i32*, i32** %29, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32* %76, i32** %29, align 8
  %77 = load i32*, i32** %29, align 8
  %78 = load i32*, i32** %20, align 8
  %79 = load i64, i64* %21, align 8
  %80 = call i32 @os_memcpy(i32* %77, i32* %78, i64 %79)
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = load i32*, i32** %30, align 8
  %83 = load i64, i64* %31, align 8
  %84 = call i32 @wpa_hexdump_key(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %82, i64 %83)
  %85 = load i32 (i32*, i32*, i64, i32*, i64)*, i32 (i32*, i32*, i64, i32*, i64)** %33, align 8
  %86 = load i32*, i32** %18, align 8
  %87 = load i32*, i32** %30, align 8
  %88 = load i64, i64* %31, align 8
  %89 = getelementptr inbounds [32 x i32], [32 x i32]* %28, i64 0, i64 0
  %90 = load i64, i64* %32, align 8
  %91 = call i32 %85(i32* %86, i32* %87, i64 %88, i32* %89, i64 %90)
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %53
  %94 = load i32*, i32** %30, align 8
  %95 = call i32 @os_free(i32* %94)
  store i32 -1, i32* %14, align 4
  br label %159

96:                                               ; preds = %53
  %97 = load i32*, i32** %30, align 8
  %98 = call i32 @os_free(i32* %97)
  %99 = load i32, i32* @MSG_DEBUG, align 4
  %100 = getelementptr inbounds [32 x i32], [32 x i32]* %28, i64 0, i64 0
  %101 = load i64, i64* %32, align 8
  %102 = call i32 @wpa_hexdump_key(i32 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %100, i64 %101)
  %103 = load i32 (i32*, i32*, i64, i32*, i64)*, i32 (i32*, i32*, i64, i32*, i64)** %33, align 8
  %104 = getelementptr inbounds [32 x i32], [32 x i32]* %28, i64 0, i64 0
  %105 = load i32*, i32** %20, align 8
  %106 = load i64, i64* %21, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = load i64, i64* %17, align 8
  %109 = call i32 %103(i32* %104, i32* %105, i64 %106, i32* %107, i64 %108)
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %96
  store i32 -1, i32* %14, align 4
  br label %159

112:                                              ; preds = %96
  %113 = load i32*, i32** %16, align 8
  store i32* %113, i32** %29, align 8
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = load i32*, i32** %29, align 8
  %116 = load i64, i64* @EAP_MSK_LEN, align 8
  %117 = call i32 @wpa_hexdump_key(i32 %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %115, i64 %116)
  %118 = load i32*, i32** %22, align 8
  %119 = load i32*, i32** %29, align 8
  %120 = load i64, i64* @EAP_MSK_LEN, align 8
  %121 = call i32 @os_memcpy(i32* %118, i32* %119, i64 %120)
  %122 = load i64, i64* @EAP_MSK_LEN, align 8
  %123 = load i32*, i32** %29, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 %122
  store i32* %124, i32** %29, align 8
  %125 = load i32, i32* @MSG_DEBUG, align 4
  %126 = load i32*, i32** %29, align 8
  %127 = load i64, i64* @EAP_EMSK_LEN, align 8
  %128 = call i32 @wpa_hexdump_key(i32 %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %126, i64 %127)
  %129 = load i32*, i32** %23, align 8
  %130 = load i32*, i32** %29, align 8
  %131 = load i64, i64* @EAP_EMSK_LEN, align 8
  %132 = call i32 @os_memcpy(i32* %129, i32* %130, i64 %131)
  %133 = load i64, i64* @EAP_EMSK_LEN, align 8
  %134 = load i32*, i32** %29, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 %133
  store i32* %135, i32** %29, align 8
  %136 = load i32, i32* @MSG_DEBUG, align 4
  %137 = load i32*, i32** %29, align 8
  %138 = load i64, i64* %25, align 8
  %139 = call i32 @wpa_hexdump_key(i32 %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %137, i64 %138)
  %140 = load i32*, i32** %24, align 8
  %141 = load i32*, i32** %29, align 8
  %142 = load i64, i64* %25, align 8
  %143 = call i32 @os_memcpy(i32* %140, i32* %141, i64 %142)
  %144 = load i64, i64* %25, align 8
  %145 = load i32*, i32** %29, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 %144
  store i32* %146, i32** %29, align 8
  %147 = load i32*, i32** %26, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %158

149:                                              ; preds = %112
  %150 = load i32, i32* @MSG_DEBUG, align 4
  %151 = load i32*, i32** %29, align 8
  %152 = load i64, i64* %27, align 8
  %153 = call i32 @wpa_hexdump_key(i32 %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %151, i64 %152)
  %154 = load i32*, i32** %26, align 8
  %155 = load i32*, i32** %29, align 8
  %156 = load i64, i64* %27, align 8
  %157 = call i32 @os_memcpy(i32* %154, i32* %155, i64 %156)
  br label %158

158:                                              ; preds = %149, %112
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %158, %111, %93, %52, %41, %36
  %160 = load i32, i32* %14, align 4
  ret i32 %160
}

declare dso_local i32 @eap_gpsk_gkdf_cmac(i32*, i32*, i64, i32*, i64) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @WPA_PUT_BE32(i32*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
