; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_nonces_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_nonces_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_entry = type { i32 }
%struct.slabhash = type { i32 }
%struct.nonce_cache_key = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@crypto_box_HALF_NONCEBYTES = common dso_local global i32 0, align 4
@DNSCRYPT_MAGIC_HEADER_LEN = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lruhash_entry* (%struct.slabhash*, i32*, i32*, i32*, i32)* @dnsc_nonces_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lruhash_entry* @dnsc_nonces_lookup(%struct.slabhash* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.slabhash*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nonce_cache_key, align 4
  store %struct.slabhash* %0, %struct.slabhash** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @crypto_box_HALF_NONCEBYTES, align 4
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* @DNSCRYPT_MAGIC_HEADER_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i32 @memset(%struct.nonce_cache_key* %11, i32 0, i32 16)
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %11, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %11, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @crypto_box_HALF_NONCEBYTES, align 4
  %26 = call i32 @memcpy(i32 %23, i32* %24, i32 %25)
  %27 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %11, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @DNSCRYPT_MAGIC_HEADER_LEN, align 4
  %31 = call i32 @memcpy(i32 %28, i32* %29, i32 %30)
  %32 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %11, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %36 = call i32 @memcpy(i32 %33, i32* %34, i32 %35)
  %37 = load %struct.slabhash*, %struct.slabhash** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call %struct.lruhash_entry* @slabhash_lookup(%struct.slabhash* %37, i32 %38, %struct.nonce_cache_key* %11, i32 0)
  ret %struct.lruhash_entry* %39
}

declare dso_local i32 @memset(%struct.nonce_cache_key*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.lruhash_entry* @slabhash_lookup(%struct.slabhash*, i32, %struct.nonce_cache_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
