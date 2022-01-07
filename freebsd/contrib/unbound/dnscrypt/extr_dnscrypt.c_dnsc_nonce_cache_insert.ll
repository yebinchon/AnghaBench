; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_nonce_cache_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_nonce_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabhash = type { i32 }
%struct.nonce_cache_key = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, %struct.nonce_cache_key*, i32, i32 }

@crypto_box_HALF_NONCEBYTES = common dso_local global i32 0, align 4
@DNSCRYPT_MAGIC_HEADER_LEN = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slabhash*, i32*, i32*, i32*, i32)* @dnsc_nonce_cache_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnsc_nonce_cache_insert(%struct.slabhash* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.slabhash*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nonce_cache_key*, align 8
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
  %18 = call i64 @calloc(i32 1, i32 40)
  %19 = inttoptr i64 %18 to %struct.nonce_cache_key*
  store %struct.nonce_cache_key* %19, %struct.nonce_cache_key** %11, align 8
  %20 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %11, align 8
  %21 = icmp ne %struct.nonce_cache_key* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %11, align 8
  %24 = call i32 @free(%struct.nonce_cache_key* %23)
  br label %64

25:                                               ; preds = %5
  %26 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %11, align 8
  %27 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = call i32 @lock_rw_init(i32* %28)
  %30 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %11, align 8
  %31 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @crypto_box_HALF_NONCEBYTES, align 4
  %35 = call i32 @memcpy(i32 %32, i32* %33, i32 %34)
  %36 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %11, align 8
  %37 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @DNSCRYPT_MAGIC_HEADER_LEN, align 4
  %41 = call i32 @memcpy(i32 %38, i32* %39, i32 %40)
  %42 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %11, align 8
  %43 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %47 = call i32 @memcpy(i32 %44, i32* %45, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %11, align 8
  %50 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %11, align 8
  %53 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %11, align 8
  %54 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store %struct.nonce_cache_key* %52, %struct.nonce_cache_key** %55, align 8
  %56 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %11, align 8
  %57 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.slabhash*, %struct.slabhash** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %11, align 8
  %62 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %61, i32 0, i32 0
  %63 = call i32 @slabhash_insert(%struct.slabhash* %59, i32 %60, %struct.TYPE_2__* %62, i32* null, i32* null)
  br label %64

64:                                               ; preds = %25, %22
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.nonce_cache_key*) #1

declare dso_local i32 @lock_rw_init(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @slabhash_insert(%struct.slabhash*, i32, %struct.TYPE_2__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
