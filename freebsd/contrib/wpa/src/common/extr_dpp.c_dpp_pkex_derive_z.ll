; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_pkex_derive_z.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_pkex_derive_z.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DPP_MAX_HASH_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"DPP: PRK = HKDF-Extract(<>, IKM)\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"DPP: z = HKDF-Expand(PRK, info, L)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64, i8*, i64, i8*, i8*, i64, i8*, i32)* @dpp_pkex_derive_z to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_pkex_derive_z(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i8* %7, i64 %8, i8* %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i64 %3, i64* %16, align 8
  store i8* %4, i8** %17, align 8
  store i64 %5, i64* %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i64 %8, i64* %21, align 8
  store i8* %9, i8** %22, align 8
  store i32 %10, i32* %23, align 4
  %32 = load i32, i32* @DPP_MAX_HASH_LEN, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %24, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %25, align 8
  %36 = load i32, i32* @DPP_MAX_HASH_LEN, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %26, align 8
  %39 = load i32, i32* %23, align 4
  %40 = call i32 @os_memset(i8* %35, i32 0, i32 %39)
  %41 = load i32, i32* %23, align 4
  %42 = load i32, i32* %23, align 4
  %43 = load i8*, i8** %20, align 8
  %44 = load i64, i64* %21, align 8
  %45 = call i64 @dpp_hmac(i32 %41, i8* %35, i32 %42, i8* %43, i64 %44, i8* %38)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %11
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %31, align 4
  br label %151

48:                                               ; preds = %11
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load i32, i32* %23, align 4
  %51 = call i32 @wpa_hexdump_key(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %50)
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = mul nsw i32 2, %52
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %16, align 8
  %56 = add i64 %54, %55
  %57 = load i64, i64* %18, align 8
  %58 = add i64 %56, %57
  %59 = load i8*, i8** %19, align 8
  %60 = call i64 @os_strlen(i8* %59)
  %61 = add i64 %58, %60
  store i64 %61, i64* %30, align 8
  %62 = load i64, i64* %30, align 8
  %63 = call i8* @os_malloc(i64 %62)
  store i8* %63, i8** %28, align 8
  %64 = load i8*, i8** %28, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %48
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %31, align 4
  br label %151

67:                                               ; preds = %48
  %68 = load i8*, i8** %28, align 8
  store i8* %68, i8** %29, align 8
  %69 = load i8*, i8** %29, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = sext i32 %71 to i64
  %73 = call i32 @os_memcpy(i8* %69, i8* %70, i64 %72)
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = load i8*, i8** %29, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %29, align 8
  %78 = load i8*, i8** %29, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = sext i32 %80 to i64
  %82 = call i32 @os_memcpy(i8* %78, i8* %79, i64 %81)
  %83 = load i32, i32* @ETH_ALEN, align 4
  %84 = load i8*, i8** %29, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %29, align 8
  %87 = load i8*, i8** %29, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = load i64, i64* %16, align 8
  %90 = call i32 @os_memcpy(i8* %87, i8* %88, i64 %89)
  %91 = load i64, i64* %16, align 8
  %92 = load i8*, i8** %29, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8* %93, i8** %29, align 8
  %94 = load i8*, i8** %29, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = load i64, i64* %18, align 8
  %97 = call i32 @os_memcpy(i8* %94, i8* %95, i64 %96)
  %98 = load i64, i64* %18, align 8
  %99 = load i8*, i8** %29, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 %98
  store i8* %100, i8** %29, align 8
  %101 = load i8*, i8** %29, align 8
  %102 = load i8*, i8** %19, align 8
  %103 = load i8*, i8** %19, align 8
  %104 = call i64 @os_strlen(i8* %103)
  %105 = call i32 @os_memcpy(i8* %101, i8* %102, i64 %104)
  %106 = load i32, i32* %23, align 4
  %107 = icmp eq i32 %106, 32
  br i1 %107, label %108, label %115

108:                                              ; preds = %67
  %109 = load i32, i32* %23, align 4
  %110 = load i8*, i8** %28, align 8
  %111 = load i64, i64* %30, align 8
  %112 = load i8*, i8** %22, align 8
  %113 = load i32, i32* %23, align 4
  %114 = call i32 @hmac_sha256_kdf(i8* %38, i32 %109, i32* null, i8* %110, i64 %111, i8* %112, i32 %113)
  store i32 %114, i32* %27, align 4
  br label %138

115:                                              ; preds = %67
  %116 = load i32, i32* %23, align 4
  %117 = icmp eq i32 %116, 48
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i32, i32* %23, align 4
  %120 = load i8*, i8** %28, align 8
  %121 = load i64, i64* %30, align 8
  %122 = load i8*, i8** %22, align 8
  %123 = load i32, i32* %23, align 4
  %124 = call i32 @hmac_sha384_kdf(i8* %38, i32 %119, i32* null, i8* %120, i64 %121, i8* %122, i32 %123)
  store i32 %124, i32* %27, align 4
  br label %137

125:                                              ; preds = %115
  %126 = load i32, i32* %23, align 4
  %127 = icmp eq i32 %126, 64
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i32, i32* %23, align 4
  %130 = load i8*, i8** %28, align 8
  %131 = load i64, i64* %30, align 8
  %132 = load i8*, i8** %22, align 8
  %133 = load i32, i32* %23, align 4
  %134 = call i32 @hmac_sha512_kdf(i8* %38, i32 %129, i32* null, i8* %130, i64 %131, i8* %132, i32 %133)
  store i32 %134, i32* %27, align 4
  br label %136

135:                                              ; preds = %125
  store i32 -1, i32* %27, align 4
  br label %136

136:                                              ; preds = %135, %128
  br label %137

137:                                              ; preds = %136, %118
  br label %138

138:                                              ; preds = %137, %108
  %139 = load i8*, i8** %28, align 8
  %140 = call i32 @os_free(i8* %139)
  %141 = load i32, i32* %23, align 4
  %142 = call i32 @os_memset(i8* %38, i32 0, i32 %141)
  %143 = load i32, i32* %27, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %31, align 4
  br label %151

146:                                              ; preds = %138
  %147 = load i32, i32* @MSG_DEBUG, align 4
  %148 = load i8*, i8** %22, align 8
  %149 = load i32, i32* %23, align 4
  %150 = call i32 @wpa_hexdump_key(i32 %147, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %148, i32 %149)
  store i32 0, i32* %12, align 4
  store i32 1, i32* %31, align 4
  br label %151

151:                                              ; preds = %146, %145, %66, %47
  %152 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %12, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i8*, i32, i32) #2

declare dso_local i64 @dpp_hmac(i32, i8*, i32, i8*, i64, i8*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i8*, i32) #2

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i8* @os_malloc(i64) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #2

declare dso_local i32 @hmac_sha256_kdf(i8*, i32, i32*, i8*, i64, i8*, i32) #2

declare dso_local i32 @hmac_sha384_kdf(i8*, i32, i32*, i8*, i64, i8*, i32) #2

declare dso_local i32 @hmac_sha512_kdf(i8*, i32, i32*, i8*, i64, i8*, i32) #2

declare dso_local i32 @os_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
