; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_ssl_peek_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_ssl_peek_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { {}* }
%struct.ssl_async_args = type { i64, %struct.TYPE_7__, i32, i8*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i8*, i64, i64*)* }

@SSL_F_SSL_PEEK_INTERNAL = common dso_local global i32 0, align 4
@SSL_R_UNINITIALIZED = common dso_local global i32 0, align 4
@SSL_RECEIVED_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_MODE_ASYNC = common dso_local global i32 0, align 4
@READFUNC = common dso_local global i32 0, align 4
@ssl_io_intern = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i64, i64*)* @ssl_peek_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_peek_internal(%struct.TYPE_9__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ssl_async_args, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @SSL_F_SSL_PEEK_INTERNAL, align 4
  %18 = load i32, i32* @SSL_R_UNINITIALIZED, align 4
  %19 = call i32 @SSLerr(i32 %17, i32 %18)
  store i32 -1, i32* %5, align 4
  br label %75

20:                                               ; preds = %4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %75

28:                                               ; preds = %20
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SSL_MODE_ASYNC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %28
  %36 = call i32* (...) @ASYNC_get_current_job()
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %10, i32 0, i32 4
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %40, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %10, i32 0, i32 3
  store i8* %41, i8** %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %10, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* @READFUNC, align 4
  %46 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %10, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = bitcast {}** %50 to i32 (%struct.TYPE_9__*, i8*, i64, i64*)**
  %52 = load i32 (%struct.TYPE_9__*, i8*, i64, i64*)*, i32 (%struct.TYPE_9__*, i8*, i64, i64*)** %51, align 8
  %53 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %10, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 (%struct.TYPE_9__*, i8*, i64, i64*)* %52, i32 (%struct.TYPE_9__*, i8*, i64, i64*)** %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = load i32, i32* @ssl_io_intern, align 4
  %57 = call i32 @ssl_start_async_job(%struct.TYPE_9__* %55, %struct.ssl_async_args* %10, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %75

63:                                               ; preds = %35, %28
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = bitcast {}** %67 to i32 (%struct.TYPE_9__*, i8*, i64, i64*)**
  %69 = load i32 (%struct.TYPE_9__*, i8*, i64, i64*)*, i32 (%struct.TYPE_9__*, i8*, i64, i64*)** %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64*, i64** %9, align 8
  %74 = call i32 %69(%struct.TYPE_9__* %70, i8* %71, i64 %72, i64* %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %63, %38, %27, %16
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32* @ASYNC_get_current_job(...) #1

declare dso_local i32 @ssl_start_async_job(%struct.TYPE_9__*, %struct.ssl_async_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
