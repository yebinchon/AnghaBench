; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_copy_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_copy_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_hash = type { i64, i32 }
%struct.padlock_sha_ctx = type { i8*, i32, i32 }

@via_feature_xcrypt = common dso_local global i32 0, align 4
@VIA_HAS_SHA = common dso_local global i32 0, align 4
@CRYPTO_SHA1_HMAC = common dso_local global i64 0, align 8
@CRYPTO_SHA2_256_HMAC = common dso_local global i64 0, align 8
@M_PADLOCK = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_hash*, i8*, i8*)* @padlock_copy_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @padlock_copy_ctx(%struct.auth_hash* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.auth_hash*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.padlock_sha_ctx*, align 8
  %8 = alloca %struct.padlock_sha_ctx*, align 8
  store %struct.auth_hash* %0, %struct.auth_hash** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @via_feature_xcrypt, align 4
  %10 = load i32, i32* @VIA_HAS_SHA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %3
  %14 = load %struct.auth_hash*, %struct.auth_hash** %4, align 8
  %15 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CRYPTO_SHA1_HMAC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.auth_hash*, %struct.auth_hash** %4, align 8
  %21 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CRYPTO_SHA2_256_HMAC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %19, %13
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to %struct.padlock_sha_ctx*
  store %struct.padlock_sha_ctx* %27, %struct.padlock_sha_ctx** %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to %struct.padlock_sha_ctx*
  store %struct.padlock_sha_ctx* %29, %struct.padlock_sha_ctx** %8, align 8
  %30 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @M_PADLOCK, align 4
  %44 = load i32, i32* @M_WAITOK, align 4
  %45 = call i8* @malloc(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @bcopy(i8* %50, i8* %53, i32 %56)
  br label %65

58:                                               ; preds = %19, %3
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.auth_hash*, %struct.auth_hash** %4, align 8
  %62 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @bcopy(i8* %59, i8* %60, i32 %63)
  br label %65

65:                                               ; preds = %58, %25
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
