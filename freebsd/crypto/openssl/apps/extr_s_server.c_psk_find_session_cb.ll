; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_psk_find_session_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_psk_find_session_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@psk_identity = common dso_local global i32 0, align 4
@psksess = common dso_local global i32* null, align 8
@psk_key = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not convert PSK key '%s' to buffer\0A\00", align 1
@tls13_aes128gcmsha256_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error finding suitable ciphersuite\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32**)* @psk_find_session_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psk_find_session_cb(i32* %0, i8* %1, i64 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* @psk_identity, align 4
  %15 = call i64 @strlen(i32 %14)
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @psk_identity, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @memcmp(i32 %19, i8* %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %4
  %25 = load i32**, i32*** %9, align 8
  store i32* null, i32** %25, align 8
  store i32 1, i32* %5, align 4
  br label %83

26:                                               ; preds = %18
  %27 = load i32*, i32** @psksess, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32*, i32** @psksess, align 8
  %31 = call i32 @SSL_SESSION_up_ref(i32* %30)
  %32 = load i32*, i32** @psksess, align 8
  %33 = load i32**, i32*** %9, align 8
  store i32* %32, i32** %33, align 8
  store i32 1, i32* %5, align 4
  br label %83

34:                                               ; preds = %26
  %35 = load i32, i32* @psk_key, align 4
  %36 = call i8* @OPENSSL_hexstr2buf(i32 %35, i64* %12)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @bio_err, align 4
  %41 = load i32, i32* @psk_key, align 4
  %42 = call i32 (i32, i8*, ...) @BIO_printf(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 0, i32* %5, align 4
  br label %83

43:                                               ; preds = %34
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @tls13_aes128gcmsha256_id, align 4
  %46 = call i32* @SSL_CIPHER_find(i32* %44, i32 %45)
  store i32* %46, i32** %13, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* @bio_err, align 4
  %51 = call i32 (i32, i8*, ...) @BIO_printf(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @OPENSSL_free(i8* %52)
  store i32 0, i32* %5, align 4
  br label %83

54:                                               ; preds = %43
  %55 = call i32* (...) @SSL_SESSION_new()
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %75, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @SSL_SESSION_set1_master_key(i32* %59, i8* %60, i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @SSL_SESSION_set_cipher(i32* %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @SSL_version(i32* %71)
  %73 = call i32 @SSL_SESSION_set_protocol_version(i32* %70, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69, %64, %58, %54
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @OPENSSL_free(i8* %76)
  store i32 0, i32* %5, align 4
  br label %83

78:                                               ; preds = %69
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @OPENSSL_free(i8* %79)
  %81 = load i32*, i32** %10, align 8
  %82 = load i32**, i32*** %9, align 8
  store i32* %81, i32** %82, align 8
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %75, %49, %39, %29, %24
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

declare dso_local i32 @SSL_SESSION_up_ref(i32*) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i32, i64*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32* @SSL_CIPHER_find(i32*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32* @SSL_SESSION_new(...) #1

declare dso_local i32 @SSL_SESSION_set1_master_key(i32*, i8*, i64) #1

declare dso_local i32 @SSL_SESSION_set_cipher(i32*, i32*) #1

declare dso_local i32 @SSL_SESSION_set_protocol_version(i32*, i32) #1

declare dso_local i32 @SSL_version(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
