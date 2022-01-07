; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_set_cipher_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_set_cipher_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }

@TLS_CIPHER_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"RC4-SHA\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"AES128-SHA\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"DHE-RSA-AES128-SHA\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ADH-AES128-SHA\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"DHE-RSA-AES256-SHA\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"AES256-SHA\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"TLS: Unsupported cipher selection: %d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"wolfSSL: cipher suites: %s\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Cipher suite configuration failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_connection_set_cipher_list(i8* %0, %struct.tls_connection* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tls_connection*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %15 = icmp ne %struct.tls_connection* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %18 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %16, %3
  store i32 -1, i32* %4, align 4
  br label %93

25:                                               ; preds = %21
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %26, align 16
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 128
  store i8* %29, i8** %10, align 8
  %30 = load i32*, i32** %7, align 8
  store i32* %30, i32** %11, align 8
  br label %31

31:                                               ; preds = %70, %25
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TLS_CIPHER_NONE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %31
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %45 [
    i32 130, label %39
    i32 133, label %40
    i32 129, label %41
    i32 131, label %42
    i32 128, label %43
    i32 132, label %44
  ]

39:                                               ; preds = %36
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %50

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %50

41:                                               ; preds = %36
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %50

42:                                               ; preds = %36
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %50

43:                                               ; preds = %36
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %50

44:                                               ; preds = %36
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %50

45:                                               ; preds = %36
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  store i32 -1, i32* %4, align 4
  br label %93

50:                                               ; preds = %44, %43, %42, %41, %40, %39
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @os_snprintf(i8* %51, i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @os_snprintf_error(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %50
  br label %77

70:                                               ; preds = %50
  %71 = load i32, i32* %12, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %9, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %11, align 8
  br label %31

77:                                               ; preds = %69, %31
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %80)
  %82 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %83 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = call i32 @wolfSSL_set_cipher_list(i32 %84, i8* %86)
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %93

92:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %89, %45, %24
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @wolfSSL_set_cipher_list(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
