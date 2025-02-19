; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_pwd_common.c_eap_pwd_h_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_pwd_common.c_eap_pwd_h_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@CRYPTO_HASH_ALG_HMAC_SHA256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_hash* @eap_pwd_h_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @SHA256_MAC_LEN, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %1, align 8
  %6 = alloca i32, i64 %4, align 16
  store i64 %4, i64* %2, align 8
  %7 = load i32, i32* @SHA256_MAC_LEN, align 4
  %8 = call i32 @os_memset(i32* %6, i32 0, i32 %7)
  %9 = load i32, i32* @CRYPTO_HASH_ALG_HMAC_SHA256, align 4
  %10 = load i32, i32* @SHA256_MAC_LEN, align 4
  %11 = call %struct.crypto_hash* @crypto_hash_init(i32 %9, i32* %6, i32 %10)
  %12 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %12)
  ret %struct.crypto_hash* %11
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local %struct.crypto_hash* @crypto_hash_init(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
