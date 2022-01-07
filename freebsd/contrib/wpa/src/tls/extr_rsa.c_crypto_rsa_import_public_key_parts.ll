; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_rsa.c_crypto_rsa_import_public_key_parts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_rsa.c_crypto_rsa_import_public_key_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rsa_key = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_rsa_key* @crypto_rsa_import_public_key_parts(i32* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.crypto_rsa_key*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.crypto_rsa_key*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = call %struct.crypto_rsa_key* @os_zalloc(i32 16)
  store %struct.crypto_rsa_key* %11, %struct.crypto_rsa_key** %10, align 8
  %12 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %10, align 8
  %13 = icmp eq %struct.crypto_rsa_key* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %5, align 8
  br label %54

15:                                               ; preds = %4
  %16 = call i8* (...) @bignum_init()
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %10, align 8
  %19 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = call i8* (...) @bignum_init()
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %10, align 8
  %23 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %10, align 8
  %25 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %15
  %29 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %10, align 8
  %30 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  %34 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %10, align 8
  %35 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @bignum_set_unsigned_bin(i32* %36, i32* %37, i64 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %10, align 8
  %43 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @bignum_set_unsigned_bin(i32* %44, i32* %45, i64 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41, %33, %28, %15
  %50 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %10, align 8
  %51 = call i32 @crypto_rsa_free(%struct.crypto_rsa_key* %50)
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %5, align 8
  br label %54

52:                                               ; preds = %41
  %53 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %10, align 8
  store %struct.crypto_rsa_key* %53, %struct.crypto_rsa_key** %5, align 8
  br label %54

54:                                               ; preds = %52, %49, %14
  %55 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %5, align 8
  ret %struct.crypto_rsa_key* %55
}

declare dso_local %struct.crypto_rsa_key* @os_zalloc(i32) #1

declare dso_local i8* @bignum_init(...) #1

declare dso_local i64 @bignum_set_unsigned_bin(i32*, i32*, i64) #1

declare dso_local i32 @crypto_rsa_free(%struct.crypto_rsa_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
