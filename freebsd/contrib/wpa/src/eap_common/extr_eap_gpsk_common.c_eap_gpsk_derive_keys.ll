; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_gpsk_common.c_eap_gpsk_derive_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_gpsk_common.c_eap_gpsk_derive_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"EAP-GPSK: Deriving keys (%d:%d)\00", align 1
@EAP_GPSK_VENDOR_IETF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"EAP-GPSK: PSK\00", align 1
@EAP_GPSK_RAND_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"EAP-GPSK: Failed to allocate memory for key derivation\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"EAP-GPSK: Seed\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"EAP-GPSK: Unknown cipher %d:%d used in key derivation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_gpsk_derive_keys(i32* %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i64 %7, i32* %8, i64 %9, i32* %10, i32* %11, i32* %12, i64* %13, i32* %14, i64* %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i64*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  store i32* %0, i32** %18, align 8
  store i64 %1, i64* %19, align 8
  store i32 %2, i32* %20, align 4
  store i32 %3, i32* %21, align 4
  store i32* %4, i32** %22, align 8
  store i32* %5, i32** %23, align 8
  store i32* %6, i32** %24, align 8
  store i64 %7, i64* %25, align 8
  store i32* %8, i32** %26, align 8
  store i64 %9, i64* %27, align 8
  store i32* %10, i32** %28, align 8
  store i32* %11, i32** %29, align 8
  store i32* %12, i32** %30, align 8
  store i64* %13, i64** %31, align 8
  store i32* %14, i32** %32, align 8
  store i64* %15, i64** %33, align 8
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* %21, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* @EAP_GPSK_VENDOR_IETF, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %16
  store i32 -1, i32* %17, align 4
  br label %136

45:                                               ; preds = %16
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i32*, i32** %18, align 8
  %48 = load i64, i64* %19, align 8
  %49 = call i32 @wpa_hexdump_key(i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %47, i64 %48)
  %50 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %51 = mul nsw i32 2, %50
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %27, align 8
  %54 = add i64 %52, %53
  %55 = load i64, i64* %25, align 8
  %56 = add i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32* @os_malloc(i32 %57)
  store i32* %58, i32** %34, align 8
  %59 = load i32*, i32** %34, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %17, align 4
  br label %136

64:                                               ; preds = %45
  %65 = load i32*, i32** %34, align 8
  store i32* %65, i32** %35, align 8
  %66 = load i32*, i32** %35, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @os_memcpy(i32* %66, i32* %67, i64 %69)
  %71 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %72 = load i32*, i32** %35, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %35, align 8
  %75 = load i32*, i32** %35, align 8
  %76 = load i32*, i32** %24, align 8
  %77 = load i64, i64* %25, align 8
  %78 = call i32 @os_memcpy(i32* %75, i32* %76, i64 %77)
  %79 = load i64, i64* %25, align 8
  %80 = load i32*, i32** %35, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 %79
  store i32* %81, i32** %35, align 8
  %82 = load i32*, i32** %35, align 8
  %83 = load i32*, i32** %23, align 8
  %84 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %85 = sext i32 %84 to i64
  %86 = call i32 @os_memcpy(i32* %82, i32* %83, i64 %85)
  %87 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %88 = load i32*, i32** %35, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %35, align 8
  %91 = load i32*, i32** %35, align 8
  %92 = load i32*, i32** %26, align 8
  %93 = load i64, i64* %27, align 8
  %94 = call i32 @os_memcpy(i32* %91, i32* %92, i64 %93)
  %95 = load i64, i64* %27, align 8
  %96 = load i32*, i32** %35, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 %95
  store i32* %97, i32** %35, align 8
  %98 = load i32, i32* @MSG_DEBUG, align 4
  %99 = load i32*, i32** %34, align 8
  %100 = load i32*, i32** %35, align 8
  %101 = load i32*, i32** %34, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i32 @wpa_hexdump(i32 %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %99, i32 %106)
  %108 = load i32, i32* %21, align 4
  switch i32 %108, label %127 [
    i32 129, label %109
  ]

109:                                              ; preds = %64
  %110 = load i32*, i32** %18, align 8
  %111 = load i64, i64* %19, align 8
  %112 = load i32*, i32** %34, align 8
  %113 = load i32*, i32** %35, align 8
  %114 = load i32*, i32** %34, align 8
  %115 = ptrtoint i32* %113 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = load i32*, i32** %28, align 8
  %121 = load i32*, i32** %29, align 8
  %122 = load i32*, i32** %30, align 8
  %123 = load i64*, i64** %31, align 8
  %124 = load i32*, i32** %32, align 8
  %125 = load i64*, i64** %33, align 8
  %126 = call i32 @eap_gpsk_derive_keys_aes(i32* %110, i64 %111, i32* %112, i32 %119, i32* %120, i32* %121, i32* %122, i64* %123, i32* %124, i64* %125)
  store i32 %126, i32* %36, align 4
  br label %132

127:                                              ; preds = %64
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %21, align 4
  %131 = call i32 (i32, i8*, ...) @wpa_printf(i32 %128, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %129, i32 %130)
  store i32 -1, i32* %36, align 4
  br label %132

132:                                              ; preds = %127, %109
  %133 = load i32*, i32** %34, align 8
  %134 = call i32 @os_free(i32* %133)
  %135 = load i32, i32* %36, align 4
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %132, %61, %44
  %137 = load i32, i32* %17, align 4
  ret i32 %137
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @eap_gpsk_derive_keys_aes(i32*, i64, i32*, i32, i32*, i32*, i32*, i64*, i32*, i64*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
