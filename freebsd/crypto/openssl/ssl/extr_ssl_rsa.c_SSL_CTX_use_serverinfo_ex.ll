; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_rsa.c_SSL_CTX_use_serverinfo_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_rsa.c_SSL_CTX_use_serverinfo_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i64 }

@SSL_F_SSL_CTX_USE_SERVERINFO_EX = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_INVALID_SERVERINFO_DATA = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_CTX_use_serverinfo_ex(%struct.TYPE_8__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %13, %4
  %20 = load i32, i32* @SSL_F_SSL_CTX_USE_SERVERINFO_EX, align 4
  %21 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %22 = call i32 @SSLerr(i32 %20, i32 %21)
  store i32 0, i32* %5, align 4
  br label %96

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @serverinfo_process_buffer(i32 %24, i8* %25, i64 %26, %struct.TYPE_8__* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @SSL_F_SSL_CTX_USE_SERVERINFO_EX, align 4
  %31 = load i32, i32* @SSL_R_INVALID_SERVERINFO_DATA, align 4
  %32 = call i32 @SSLerr(i32 %30, i32 %31)
  store i32 0, i32* %5, align 4
  br label %96

33:                                               ; preds = %23
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp eq %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @SSL_F_SSL_CTX_USE_SERVERINFO_EX, align 4
  %42 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %43 = call i32 @SSLerr(i32 %41, i32 %42)
  store i32 0, i32* %5, align 4
  br label %96

44:                                               ; preds = %33
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i8* @OPENSSL_realloc(i8* %51, i64 %52)
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i32, i32* @SSL_F_SSL_CTX_USE_SERVERINFO_EX, align 4
  %58 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %59 = call i32 @SSLerr(i32 %57, i32 %58)
  store i32 0, i32* %5, align 4
  br label %96

60:                                               ; preds = %44
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i8* %61, i8** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @memcpy(i8* %74, i8* %75, i64 %76)
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i64 %78, i64* %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = call i32 @serverinfo_process_buffer(i32 %85, i8* %86, i64 %87, %struct.TYPE_8__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %60
  %92 = load i32, i32* @SSL_F_SSL_CTX_USE_SERVERINFO_EX, align 4
  %93 = load i32, i32* @SSL_R_INVALID_SERVERINFO_DATA, align 4
  %94 = call i32 @SSLerr(i32 %92, i32 %93)
  store i32 0, i32* %5, align 4
  br label %96

95:                                               ; preds = %60
  store i32 1, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %91, %56, %40, %29, %19
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @serverinfo_process_buffer(i32, i8*, i64, %struct.TYPE_8__*) #1

declare dso_local i8* @OPENSSL_realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
