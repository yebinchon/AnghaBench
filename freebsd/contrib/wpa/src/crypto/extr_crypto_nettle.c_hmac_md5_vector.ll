; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_nettle.c_hmac_md5_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_nettle.c_hmac_md5_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmac_md5_ctx = type { i32 }

@MD5_DIGEST_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hmac_md5_vector(i32* %0, i64 %1, i64 %2, i32** %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.hmac_md5_ctx, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32** %3, i32*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = call i64 (...) @TEST_FAIL()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %45

19:                                               ; preds = %6
  %20 = load i64, i64* %9, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @hmac_md5_set_key(%struct.hmac_md5_ctx* %14, i64 %20, i32* %21)
  store i64 0, i64* %15, align 8
  br label %23

23:                                               ; preds = %37, %19
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i64*, i64** %12, align 8
  %29 = load i64, i64* %15, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i32**, i32*** %11, align 8
  %33 = load i64, i64* %15, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @hmac_md5_update(%struct.hmac_md5_ctx* %14, i64 %31, i32* %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i64, i64* %15, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %15, align 8
  br label %23

40:                                               ; preds = %23
  %41 = load i32, i32* @MD5_DIGEST_SIZE, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @hmac_md5_digest(%struct.hmac_md5_ctx* %14, i32 %41, i32* %42)
  %44 = call i32 @os_memset(%struct.hmac_md5_ctx* %14, i32 0, i32 4)
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %18
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32 @hmac_md5_set_key(%struct.hmac_md5_ctx*, i64, i32*) #1

declare dso_local i32 @hmac_md5_update(%struct.hmac_md5_ctx*, i64, i32*) #1

declare dso_local i32 @hmac_md5_digest(%struct.hmac_md5_ctx*, i32, i32*) #1

declare dso_local i32 @os_memset(%struct.hmac_md5_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
