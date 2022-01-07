; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls12_copy_sigalgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls12_copy_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@SSL_SECOP_SIGALG_SUPPORTED = common dso_local global i32 0, align 4
@EVP_PKEY_RSA = common dso_local global i64 0, align 8
@NID_sha1 = common dso_local global i64 0, align 8
@NID_sha224 = common dso_local global i64 0, align 8
@SSL_F_TLS12_COPY_SIGALGS = common dso_local global i32 0, align 4
@SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls12_copy_sigalgs(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %61, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %13
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_4__* @tls1_lookup_sigalg(i32 %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %12, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @SSL_SECOP_SIGALG_SUPPORTED, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %24 = call i32 @tls12_sigalg_allowed(i32* %21, i32 %22, %struct.TYPE_4__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %61

27:                                               ; preds = %17
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @WPACKET_put_bytes_u16(i32* %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %75

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @SSL_IS_TLS13(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EVP_PKEY_RSA, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NID_sha1, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NID_sha224, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %37
  store i32 1, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %53, %47, %41, %34
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %10, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %8, align 8
  br label %13

66:                                               ; preds = %13
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @SSL_F_TLS12_COPY_SIGALGS, align 4
  %71 = load i32, i32* @SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM, align 4
  %72 = call i32 @SSLerr(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %33
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_4__* @tls1_lookup_sigalg(i32) #1

declare dso_local i32 @tls12_sigalg_allowed(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @SSL_IS_TLS13(i32*) #1

declare dso_local i32 @SSLerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
