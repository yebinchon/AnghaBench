; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_common.c_tls_key_x_server_params_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_common.c_tls_key_x_server_params_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32 }

@CRYPTO_HASH_ALG_MD5 = common dso_local global i32 0, align 4
@TLS_RANDOM_LEN = common dso_local global i64 0, align 8
@MD5_MAC_LEN = common dso_local global i64 0, align 8
@CRYPTO_HASH_ALG_SHA1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_key_x_server_params_hash(i32 %0, i32* %1, i32* %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.crypto_hash*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  store i32* %17, i32** %14, align 8
  %18 = load i32, i32* @CRYPTO_HASH_ALG_MD5, align 4
  %19 = call %struct.crypto_hash* @crypto_hash_init(i32 %18, i32* null, i32 0)
  store %struct.crypto_hash* %19, %struct.crypto_hash** %16, align 8
  %20 = load %struct.crypto_hash*, %struct.crypto_hash** %16, align 8
  %21 = icmp eq %struct.crypto_hash* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %87

23:                                               ; preds = %6
  %24 = load %struct.crypto_hash*, %struct.crypto_hash** %16, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i64, i64* @TLS_RANDOM_LEN, align 8
  %27 = call i32 @crypto_hash_update(%struct.crypto_hash* %24, i32* %25, i64 %26)
  %28 = load %struct.crypto_hash*, %struct.crypto_hash** %16, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* @TLS_RANDOM_LEN, align 8
  %31 = call i32 @crypto_hash_update(%struct.crypto_hash* %28, i32* %29, i64 %30)
  %32 = load %struct.crypto_hash*, %struct.crypto_hash** %16, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @crypto_hash_update(%struct.crypto_hash* %32, i32* %33, i64 %34)
  %36 = load i64, i64* @MD5_MAC_LEN, align 8
  store i64 %36, i64* %15, align 8
  %37 = load %struct.crypto_hash*, %struct.crypto_hash** %16, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i64 @crypto_hash_finish(%struct.crypto_hash* %37, i32* %38, i64* %15)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  br label %87

42:                                               ; preds = %23
  %43 = load i64, i64* %15, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 %43
  store i32* %45, i32** %14, align 8
  %46 = load i32, i32* @CRYPTO_HASH_ALG_SHA1, align 4
  %47 = call %struct.crypto_hash* @crypto_hash_init(i32 %46, i32* null, i32 0)
  store %struct.crypto_hash* %47, %struct.crypto_hash** %16, align 8
  %48 = load %struct.crypto_hash*, %struct.crypto_hash** %16, align 8
  %49 = icmp eq %struct.crypto_hash* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 -1, i32* %7, align 4
  br label %87

51:                                               ; preds = %42
  %52 = load %struct.crypto_hash*, %struct.crypto_hash** %16, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i64, i64* @TLS_RANDOM_LEN, align 8
  %55 = call i32 @crypto_hash_update(%struct.crypto_hash* %52, i32* %53, i64 %54)
  %56 = load %struct.crypto_hash*, %struct.crypto_hash** %16, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i64, i64* @TLS_RANDOM_LEN, align 8
  %59 = call i32 @crypto_hash_update(%struct.crypto_hash* %56, i32* %57, i64 %58)
  %60 = load %struct.crypto_hash*, %struct.crypto_hash** %16, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @crypto_hash_update(%struct.crypto_hash* %60, i32* %61, i64 %62)
  %64 = load i32*, i32** %13, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  %66 = load i32*, i32** %14, align 8
  %67 = ptrtoint i32* %65 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  store i64 %70, i64* %15, align 8
  %71 = load %struct.crypto_hash*, %struct.crypto_hash** %16, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = call i64 @crypto_hash_finish(%struct.crypto_hash* %71, i32* %72, i64* %15)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %51
  store i32 -1, i32* %7, align 4
  br label %87

76:                                               ; preds = %51
  %77 = load i64, i64* %15, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 %77
  store i32* %79, i32** %14, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = ptrtoint i32* %80 to i64
  %83 = ptrtoint i32* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 4
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %76, %75, %50, %41, %22
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.crypto_hash* @crypto_hash_init(i32, i32*, i32) #1

declare dso_local i32 @crypto_hash_update(%struct.crypto_hash*, i32*, i64) #1

declare dso_local i64 @crypto_hash_finish(%struct.crypto_hash*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
