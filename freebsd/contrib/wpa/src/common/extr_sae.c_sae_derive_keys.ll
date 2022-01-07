; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { i32*, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32 }
%struct.crypto_bignum = type { i32 }

@SAE_KEYSEED_KEY_LEN = common dso_local global i32 0, align 4
@SAE_MAX_PRIME_LEN = common dso_local global i32 0, align 4
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@SAE_KCK_LEN = common dso_local global i32 0, align 4
@SAE_PMK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SAE: keyseed\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SAE: PMKID\00", align 1
@SAE_PMKID_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"SAE KCK and PMK\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SAE: KCK\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SAE: PMK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, i32*)* @sae_derive_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_derive_keys(%struct.sae_data* %0, i32* %1) #0 {
  %3 = alloca %struct.sae_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.crypto_bignum*, align 8
  %11 = alloca i32, align 4
  store %struct.sae_data* %0, %struct.sae_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* @SAE_KEYSEED_KEY_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @SAE_MAX_PRIME_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %19 = load i32, i32* @SHA256_MAC_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load i32, i32* @SAE_KCK_LEN, align 4
  %23 = load i32, i32* @SAE_PMK_LEN, align 4
  %24 = add nsw i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  store i32 -1, i32* %11, align 4
  %27 = call %struct.crypto_bignum* (...) @crypto_bignum_init()
  store %struct.crypto_bignum* %27, %struct.crypto_bignum** %10, align 8
  %28 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %29 = icmp eq %struct.crypto_bignum* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %131

31:                                               ; preds = %2
  %32 = mul nuw i64 4, %13
  %33 = trunc i64 %32 to i32
  %34 = call i32 @os_memset(i32* %15, i32 0, i32 %33)
  %35 = mul nuw i64 4, %13
  %36 = trunc i64 %35 to i32
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %39 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @hmac_sha256(i32* %15, i32 %36, i32* %37, i32 %42, i32* %21)
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = mul nuw i64 4, %20
  %46 = trunc i64 %45 to i32
  %47 = call i32 @wpa_hexdump_key(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %21, i32 %46)
  %48 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %49 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %54 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %57 = call i32 @crypto_bignum_add(i32 %52, i32 %55, %struct.crypto_bignum* %56)
  %58 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %59 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %60 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %65 = call i32 @crypto_bignum_mod(%struct.crypto_bignum* %58, i32 %63, %struct.crypto_bignum* %64)
  %66 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %67 = mul nuw i64 4, %17
  %68 = trunc i64 %67 to i32
  %69 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %70 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @crypto_bignum_to_bin(%struct.crypto_bignum* %66, i32* %18, i32 %68, i32 %73)
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i32, i32* @SAE_PMKID_LEN, align 4
  %77 = call i32 @wpa_hexdump(i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %18, i32 %76)
  %78 = mul nuw i64 4, %20
  %79 = trunc i64 %78 to i32
  %80 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %81 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = mul nuw i64 4, %25
  %86 = trunc i64 %85 to i32
  %87 = call i64 @sha256_prf(i32* %21, i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %18, i32 %84, i32* %26, i32 %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %31
  br label %131

90:                                               ; preds = %31
  %91 = mul nuw i64 4, %20
  %92 = trunc i64 %91 to i32
  %93 = call i32 @os_memset(i32* %21, i32 0, i32 %92)
  %94 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %95 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @SAE_KCK_LEN, align 4
  %100 = call i32 @os_memcpy(i32* %98, i32* %26, i32 %99)
  %101 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %102 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @SAE_KCK_LEN, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %26, i64 %105
  %107 = load i32, i32* @SAE_PMK_LEN, align 4
  %108 = call i32 @os_memcpy(i32* %103, i32* %106, i32 %107)
  %109 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %110 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* @SAE_PMKID_LEN, align 4
  %113 = call i32 @os_memcpy(i32* %111, i32* %18, i32 %112)
  %114 = mul nuw i64 4, %25
  %115 = trunc i64 %114 to i32
  %116 = call i32 @os_memset(i32* %26, i32 0, i32 %115)
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %119 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @SAE_KCK_LEN, align 4
  %124 = call i32 @wpa_hexdump_key(i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %122, i32 %123)
  %125 = load i32, i32* @MSG_DEBUG, align 4
  %126 = load %struct.sae_data*, %struct.sae_data** %3, align 8
  %127 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @SAE_PMK_LEN, align 4
  %130 = call i32 @wpa_hexdump_key(i32 %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %128, i32 %129)
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %90, %89, %30
  %132 = load %struct.crypto_bignum*, %struct.crypto_bignum** %10, align 8
  %133 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %132, i32 0)
  %134 = load i32, i32* %11, align 4
  %135 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %135)
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.crypto_bignum* @crypto_bignum_init(...) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @hmac_sha256(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32 @crypto_bignum_add(i32, i32, %struct.crypto_bignum*) #2

declare dso_local i32 @crypto_bignum_mod(%struct.crypto_bignum*, i32, %struct.crypto_bignum*) #2

declare dso_local i32 @crypto_bignum_to_bin(%struct.crypto_bignum*, i32*, i32, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i64 @sha256_prf(i32*, i32, i8*, i32*, i32, i32*, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
