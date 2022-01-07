; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_nss_keylog_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_nss_keylog_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i8*)* }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_NSS_KEYLOG_INT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*, i32*, i64, i32*, i64)* @nss_keylog_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nss_keylog_int(i8* %0, %struct.TYPE_7__* %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i64 0, i64* %16, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %22, align 8
  %24 = icmp eq i32 (%struct.TYPE_7__*, i8*)* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %103

26:                                               ; preds = %6
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %18, align 8
  %29 = load i64, i64* %18, align 8
  %30 = load i64, i64* %11, align 8
  %31 = mul i64 2, %30
  %32 = add i64 %29, %31
  %33 = load i64, i64* %13, align 8
  %34 = mul i64 2, %33
  %35 = add i64 %32, %34
  %36 = add i64 %35, 3
  store i64 %36, i64* %16, align 8
  %37 = load i64, i64* %16, align 8
  %38 = call i8* @OPENSSL_malloc(i64 %37)
  store i8* %38, i8** %15, align 8
  store i8* %38, i8** %14, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %43 = load i32, i32* @SSL_F_NSS_KEYLOG_INT, align 4
  %44 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %45 = call i32 @SSLfatal(%struct.TYPE_7__* %41, i32 %42, i32 %43, i32 %44)
  store i32 0, i32* %7, align 4
  br label %103

46:                                               ; preds = %26
  %47 = load i8*, i8** %15, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strcpy(i8* %47, i8* %48)
  %50 = load i64, i64* %18, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %15, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %15, align 8
  store i8 32, i8* %53, align 1
  store i64 0, i64* %17, align 8
  br label %55

55:                                               ; preds = %68, %46
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i8*, i8** %15, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i64, i64* %17, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8* %67, i8** %15, align 8
  br label %68

68:                                               ; preds = %59
  %69 = load i64, i64* %17, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %17, align 8
  br label %55

71:                                               ; preds = %55
  %72 = load i8*, i8** %15, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %15, align 8
  store i8 32, i8* %72, align 1
  store i64 0, i64* %17, align 8
  br label %74

74:                                               ; preds = %87, %71
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i8*, i8** %15, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i64, i64* %17, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i8*, i8** %15, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %86, i8** %15, align 8
  br label %87

87:                                               ; preds = %78
  %88 = load i64, i64* %17, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %17, align 8
  br label %74

90:                                               ; preds = %74
  %91 = load i8*, i8** %15, align 8
  store i8 0, i8* %91, align 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %95, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = call i32 %96(%struct.TYPE_7__* %97, i8* %98)
  %100 = load i8*, i8** %14, align 8
  %101 = load i64, i64* %16, align 8
  %102 = call i32 @OPENSSL_clear_free(i8* %100, i64 %101)
  store i32 1, i32* %7, align 4
  br label %103

103:                                              ; preds = %90, %40, %25
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
