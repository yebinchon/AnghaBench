; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_get_eap_fast_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_get_eap_fast_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32* }

@SEED_LEN = common dso_local global i32 0, align 4
@RAN_LEN = common dso_local global i32 0, align 4
@WOLFSSL_TLSV1_2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"key expansion\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_connection_get_eap_fast_key(i8* %0, %struct.tls_connection* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tls_connection*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %24 = load i32, i32* @SEED_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %28 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %29 = icmp ne %struct.tls_connection* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %32 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %124

36:                                               ; preds = %30
  %37 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %38 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %13, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @wolfSSL_GetKeySize(i32* %40)
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @wolfSSL_GetHmacSize(i32* %42)
  %44 = add nsw i32 %41, %43
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @wolfSSL_GetIVSize(i32* %45)
  %47 = add nsw i32 %44, %46
  %48 = mul nsw i32 2, %47
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32* @os_malloc(i32 %53)
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %124

58:                                               ; preds = %36
  %59 = load i32*, i32** %14, align 8
  store i32* %59, i32** %15, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @wolfSSL_get_keys(i32* %60, i32** %17, i32* %18, i32** %19, i32* %20, i32** %21, i32* %22)
  %62 = load i32*, i32** %19, align 8
  %63 = load i32, i32* @RAN_LEN, align 4
  %64 = sext i32 %63 to i64
  %65 = call i32 @os_memcpy(i32* %27, i32* %62, i64 %64)
  %66 = load i32, i32* @RAN_LEN, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %27, i64 %67
  %69 = load i32*, i32** %21, align 8
  %70 = load i32, i32* @RAN_LEN, align 4
  %71 = sext i32 %70 to i64
  %72 = call i32 @os_memcpy(i32* %68, i32* %69, i64 %71)
  %73 = load i32*, i32** %13, align 8
  %74 = call i64 @wolfSSL_GetVersion(i32* %73)
  %75 = load i64, i64* @WOLFSSL_TLSV1_2, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %58
  %78 = load i32*, i32** %17, align 8
  %79 = load i32, i32* %18, align 4
  %80 = mul nuw i64 4, %25
  %81 = trunc i64 %80 to i32
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @tls_prf_sha256(i32* %78, i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %27, i32 %81, i32* %82, i32 %87)
  store i32 0, i32* %12, align 4
  br label %101

89:                                               ; preds = %58
  %90 = load i32*, i32** %17, align 8
  %91 = load i32, i32* %18, align 4
  %92 = mul nuw i64 4, %25
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @tls_prf_sha1_md5(i32* %90, i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %27, i32 %93, i32* %94, i32 %99)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %89, %77
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @forced_memzero(i32* %102, i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load i32*, i32** %8, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @os_memcpy(i32* %108, i32* %112, i64 %113)
  br label %115

115:                                              ; preds = %107, %101
  %116 = load i32*, i32** %14, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %9, align 8
  %120 = add i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @bin_clear_free(i32* %116, i32 %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %124

124:                                              ; preds = %115, %57, %35
  %125 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wolfSSL_GetKeySize(i32*) #2

declare dso_local i32 @wolfSSL_GetHmacSize(i32*) #2

declare dso_local i32 @wolfSSL_GetIVSize(i32*) #2

declare dso_local i32* @os_malloc(i32) #2

declare dso_local i32 @wolfSSL_get_keys(i32*, i32**, i32*, i32**, i32*, i32**, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

declare dso_local i64 @wolfSSL_GetVersion(i32*) #2

declare dso_local i32 @tls_prf_sha256(i32*, i32, i8*, i32*, i32, i32*, i32) #2

declare dso_local i32 @tls_prf_sha1_md5(i32*, i32, i8*, i32*, i32, i32*, i32) #2

declare dso_local i32 @forced_memzero(i32*, i32) #2

declare dso_local i32 @bin_clear_free(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
