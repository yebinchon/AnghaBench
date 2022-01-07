; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_get_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_get_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"SSL_RSA_WITH_RC4_128_SHA\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"RC4-SHA\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"TLS_RSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"AES128-SHA\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"TLS_DHE_RSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"DHE-RSA-AES128-SHA\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"TLS_DH_anon_WITH_AES_128_CBC_SHA\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ADH-AES128-SHA\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"TLS_DHE_RSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"DHE-RSA-AES256-SHA\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"TLS_RSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"AES256-SHA\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_get_cipher(i8* %0, %struct.tls_connection* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tls_connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %13 = icmp ne %struct.tls_connection* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %16 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %4
  store i32 -1, i32* %5, align 4
  br label %93

20:                                               ; preds = %14
  %21 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %22 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @wolfSSL_get_current_cipher(i32 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %93

28:                                               ; preds = %20
  %29 = load i32*, i32** %10, align 8
  %30 = call i8* @wolfSSL_CIPHER_get_name(i32* %29)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %93

34:                                               ; preds = %28
  %35 = load i8*, i8** %11, align 8
  %36 = call i64 @os_strcmp(i8* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @os_strlcpy(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  br label %92

42:                                               ; preds = %34
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @os_strcmp(i8* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @os_strlcpy(i8* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  br label %91

50:                                               ; preds = %42
  %51 = load i8*, i8** %11, align 8
  %52 = call i64 @os_strcmp(i8* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @os_strlcpy(i8* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %56)
  br label %90

58:                                               ; preds = %50
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @os_strcmp(i8* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @os_strlcpy(i8* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64 %64)
  br label %89

66:                                               ; preds = %58
  %67 = load i8*, i8** %11, align 8
  %68 = call i64 @os_strcmp(i8* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @os_strlcpy(i8* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 %72)
  br label %88

74:                                               ; preds = %66
  %75 = load i8*, i8** %11, align 8
  %76 = call i64 @os_strcmp(i8* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @os_strlcpy(i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i64 %80)
  br label %87

82:                                               ; preds = %74
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @os_strlcpy(i8* %83, i8* %84, i64 %85)
  br label %87

87:                                               ; preds = %82, %78
  br label %88

88:                                               ; preds = %87, %70
  br label %89

89:                                               ; preds = %88, %62
  br label %90

90:                                               ; preds = %89, %54
  br label %91

91:                                               ; preds = %90, %46
  br label %92

92:                                               ; preds = %91, %38
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %33, %27, %19
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32* @wolfSSL_get_current_cipher(i32) #1

declare dso_local i8* @wolfSSL_CIPHER_get_name(i32*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
