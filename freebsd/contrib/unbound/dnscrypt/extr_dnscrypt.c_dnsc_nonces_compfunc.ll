; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_nonces_compfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_nonces_compfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nonce_cache_key = type { i32, i32, i32 }

@crypto_box_HALF_NONCEBYTES = common dso_local global i32 0, align 4
@DNSCRYPT_MAGIC_HEADER_LEN = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnsc_nonces_compfunc(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nonce_cache_key*, align 8
  %6 = alloca %struct.nonce_cache_key*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.nonce_cache_key*
  store %struct.nonce_cache_key* %8, %struct.nonce_cache_key** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.nonce_cache_key*
  store %struct.nonce_cache_key* %10, %struct.nonce_cache_key** %6, align 8
  %11 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %5, align 8
  %12 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %6, align 8
  %15 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @crypto_box_HALF_NONCEBYTES, align 4
  %18 = call i64 @sodium_memcmp(i32 %13, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %2
  %21 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %5, align 8
  %22 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %6, align 8
  %25 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DNSCRYPT_MAGIC_HEADER_LEN, align 4
  %28 = call i64 @sodium_memcmp(i32 %23, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %20
  %31 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %5, align 8
  %32 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nonce_cache_key*, %struct.nonce_cache_key** %6, align 8
  %35 = getelementptr inbounds %struct.nonce_cache_key, %struct.nonce_cache_key* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %38 = call i64 @sodium_memcmp(i32 %33, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %30, %20, %2
  %41 = phi i1 [ true, %20 ], [ true, %2 ], [ %39, %30 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i64 @sodium_memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
