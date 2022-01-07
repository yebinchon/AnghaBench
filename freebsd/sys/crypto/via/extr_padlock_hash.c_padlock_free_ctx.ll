; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_free_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_free_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_hash = type { i64 }

@via_feature_xcrypt = common dso_local global i32 0, align 4
@VIA_HAS_SHA = common dso_local global i32 0, align 4
@CRYPTO_SHA1_HMAC = common dso_local global i64 0, align 8
@CRYPTO_SHA2_256_HMAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_hash*, i8*)* @padlock_free_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @padlock_free_ctx(%struct.auth_hash* %0, i8* %1) #0 {
  %3 = alloca %struct.auth_hash*, align 8
  %4 = alloca i8*, align 8
  store %struct.auth_hash* %0, %struct.auth_hash** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @via_feature_xcrypt, align 4
  %6 = load i32, i32* @VIA_HAS_SHA, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.auth_hash*, %struct.auth_hash** %3, align 8
  %11 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CRYPTO_SHA1_HMAC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.auth_hash*, %struct.auth_hash** %3, align 8
  %17 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CRYPTO_SHA2_256_HMAC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %9
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @padlock_sha_free(i8* %22)
  br label %24

24:                                               ; preds = %21, %15, %2
  ret void
}

declare dso_local i32 @padlock_sha_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
