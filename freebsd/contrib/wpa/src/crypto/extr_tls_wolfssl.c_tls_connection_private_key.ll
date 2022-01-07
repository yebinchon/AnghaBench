; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_private_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }

@tls_passwd_cb = common dso_local global i32* null, align 8
@SSL_FILETYPE_ASN1 = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SSL: use private DER blob failed\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"SSL: use private key blob OK\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"SSL: use private key PEM file failed\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"SSL: use private key DER file failed\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"SSL: use private key file OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tls_connection*, i8*, i8*, i32*, i64)* @tls_connection_private_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_connection_private_key(i8* %0, %struct.tls_connection* %1, i8* %2, i8* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tls_connection*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i32*, i32** %12, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %106

25:                                               ; preds = %21, %6
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i8*, i8** %11, align 8
  %30 = call i8* @os_strdup(i8* %29)
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 -1, i32* %7, align 4
  br label %106

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %25
  %36 = load i32*, i32** %14, align 8
  %37 = load i32*, i32** @tls_passwd_cb, align 8
  %38 = call i32 @wolfSSL_CTX_set_default_passwd_cb(i32* %36, i32* %37)
  %39 = load i32*, i32** %14, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = call i32 @wolfSSL_CTX_set_default_passwd_cb_userdata(i32* %39, i8* %40)
  %42 = load i32*, i32** %12, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %35
  %45 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %46 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %51 = call i64 @wolfSSL_use_PrivateKey_buffer(i32 %47, i32* %48, i64 %49, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @MSG_INFO, align 4
  %55 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %97, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %97

66:                                               ; preds = %63
  %67 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %68 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %72 = call i64 @wolfSSL_use_PrivateKey_file(i32 %69, i8* %70, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %66
  %75 = load i32, i32* @MSG_INFO, align 4
  %76 = call i32 @wpa_printf(i32 %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %78 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %82 = call i64 @wolfSSL_use_PrivateKey_file(i32 %79, i8* %80, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32, i32* @MSG_INFO, align 4
  %86 = call i32 @wpa_printf(i32 %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %88

87:                                               ; preds = %74
  store i32 1, i32* %16, align 4
  br label %88

88:                                               ; preds = %87, %84
  br label %90

89:                                               ; preds = %66
  store i32 1, i32* %16, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = call i32 @wpa_printf(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %63, %60
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @wolfSSL_CTX_set_default_passwd_cb(i32* %98, i32* null)
  %100 = load i8*, i8** %15, align 8
  %101 = call i32 @os_free(i8* %100)
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  store i32 -1, i32* %7, align 4
  br label %106

105:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %105, %104, %33, %24
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @wolfSSL_CTX_set_default_passwd_cb(i32*, i32*) #1

declare dso_local i32 @wolfSSL_CTX_set_default_passwd_cb_userdata(i32*, i8*) #1

declare dso_local i64 @wolfSSL_use_PrivateKey_buffer(i32, i32*, i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wolfSSL_use_PrivateKey_file(i32, i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
