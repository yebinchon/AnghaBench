; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_enc.c_tls1_generate_master_secret.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_enc.c_tls1_generate_master_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i8*, i32* }

@SSL_SESS_FLAG_EXTMS = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@TLS_MD_EXTENDED_MASTER_SECRET_CONST = common dso_local global i32 0, align 4
@TLS_MD_EXTENDED_MASTER_SECRET_CONST_SIZE = common dso_local global i32 0, align 4
@SSL3_MASTER_SECRET_SIZE = common dso_local global i64 0, align 8
@TLS_MD_MASTER_SECRET_CONST = common dso_local global i32 0, align 4
@TLS_MD_MASTER_SECRET_CONST_SIZE = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_generate_master_secret(%struct.TYPE_10__* %0, i8* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SSL_SESS_FLAG_EXTMS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %5
  %25 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %26 = mul nsw i32 %25, 2
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = call i32 @ssl3_digest_cached_records(%struct.TYPE_10__* %30, i32 1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = trunc i64 %27 to i32
  %36 = call i32 @ssl_handshake_hash(%struct.TYPE_10__* %34, i8* %29, i32 %35, i64* %14)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %24
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %54

39:                                               ; preds = %33
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = load i32, i32* @TLS_MD_EXTENDED_MASTER_SECRET_CONST, align 4
  %42 = load i32, i32* @TLS_MD_EXTENDED_MASTER_SECRET_CONST_SIZE, align 4
  %43 = load i64, i64* %14, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* @SSL3_MASTER_SECRET_SIZE, align 8
  %48 = call i32 @tls1_PRF(%struct.TYPE_10__* %40, i32 %41, i32 %42, i8* %29, i64 %43, i32* null, i32 0, i32* null, i64 0, i32* null, i32 0, i8* %44, i64 %45, i8* %46, i64 %47, i32 1)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %54

51:                                               ; preds = %39
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @OPENSSL_cleanse(i8* %29, i64 %52)
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %51, %50, %38
  %55 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %15, align 4
  switch i32 %56, label %87 [
    i32 0, label %57
    i32 1, label %85
  ]

57:                                               ; preds = %54
  br label %82

58:                                               ; preds = %5
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = load i32, i32* @TLS_MD_MASTER_SECRET_CONST, align 4
  %61 = load i32, i32* @TLS_MD_MASTER_SECRET_CONST_SIZE, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* @SSL3_RANDOM_SIZE, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @SSL3_RANDOM_SIZE, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* @SSL3_MASTER_SECRET_SIZE, align 8
  %78 = call i32 @tls1_PRF(%struct.TYPE_10__* %59, i32 %60, i32 %61, i8* %66, i64 %67, i32* null, i32 0, i32* %72, i64 %73, i32* null, i32 0, i8* %74, i64 %75, i8* %76, i64 %77, i32 1)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %85

81:                                               ; preds = %58
  br label %82

82:                                               ; preds = %81, %57
  %83 = load i64, i64* @SSL3_MASTER_SECRET_SIZE, align 8
  %84 = load i64*, i64** %11, align 8
  store i64 %83, i64* %84, align 8
  store i32 1, i32* %6, align 4
  br label %85

85:                                               ; preds = %82, %80, %54
  %86 = load i32, i32* %6, align 4
  ret i32 %86

87:                                               ; preds = %54
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ssl3_digest_cached_records(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @ssl_handshake_hash(%struct.TYPE_10__*, i8*, i32, i64*) #2

declare dso_local i32 @tls1_PRF(%struct.TYPE_10__*, i32, i32, i8*, i64, i32*, i32, i32*, i64, i32*, i32, i8*, i64, i8*, i64, i32) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
