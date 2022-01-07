; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_ssl_read_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_ssl_read_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, i64, %struct.TYPE_9__*, i32, i32* }
%struct.TYPE_9__ = type { {}* }
%struct.ssl_async_args = type { i64, %struct.TYPE_8__, i32, i8*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i8*, i64, i64*)* }

@SSL_F_SSL_READ_INTERNAL = common dso_local global i32 0, align 4
@SSL_R_UNINITIALIZED = common dso_local global i32 0, align 4
@SSL_RECEIVED_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_NOTHING = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_CONNECT_RETRY = common dso_local global i64 0, align 8
@SSL_EARLY_DATA_ACCEPT_RETRY = common dso_local global i64 0, align 8
@ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED = common dso_local global i32 0, align 4
@SSL_MODE_ASYNC = common dso_local global i32 0, align 4
@READFUNC = common dso_local global i32 0, align 4
@ssl_io_intern = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_read_internal(%struct.TYPE_10__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ssl_async_args, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @SSL_F_SSL_READ_INTERNAL, align 4
  %18 = load i32, i32* @SSL_R_UNINITIALIZED, align 4
  %19 = call i32 @SSLerr(i32 %17, i32 %18)
  store i32 -1, i32* %5, align 4
  br label %96

20:                                               ; preds = %4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @SSL_NOTHING, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %5, align 4
  br label %96

31:                                               ; preds = %20
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SSL_EARLY_DATA_CONNECT_RETRY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SSL_EARLY_DATA_ACCEPT_RETRY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37, %31
  %44 = load i32, i32* @SSL_F_SSL_READ_INTERNAL, align 4
  %45 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %46 = call i32 @SSLerr(i32 %44, i32 %45)
  store i32 0, i32* %5, align 4
  br label %96

47:                                               ; preds = %37
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = call i32 @ossl_statem_check_finish_init(%struct.TYPE_10__* %48, i32 0)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SSL_MODE_ASYNC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %47
  %57 = call i32* (...) @ASYNC_get_current_job()
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %10, i32 0, i32 4
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %61, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %10, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %10, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* @READFUNC, align 4
  %67 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %10, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = bitcast {}** %71 to i32 (%struct.TYPE_10__*, i8*, i64, i64*)**
  %73 = load i32 (%struct.TYPE_10__*, i8*, i64, i64*)*, i32 (%struct.TYPE_10__*, i8*, i64, i64*)** %72, align 8
  %74 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %10, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 (%struct.TYPE_10__*, i8*, i64, i64*)* %73, i32 (%struct.TYPE_10__*, i8*, i64, i64*)** %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = load i32, i32* @ssl_io_intern, align 4
  %78 = call i32 @ssl_start_async_job(%struct.TYPE_10__* %76, %struct.ssl_async_args* %10, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %9, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %96

84:                                               ; preds = %56, %47
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = bitcast {}** %88 to i32 (%struct.TYPE_10__*, i8*, i64, i64*)**
  %90 = load i32 (%struct.TYPE_10__*, i8*, i64, i64*)*, i32 (%struct.TYPE_10__*, i8*, i64, i64*)** %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64*, i64** %9, align 8
  %95 = call i32 %90(%struct.TYPE_10__* %91, i8* %92, i64 %93, i64* %94)
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %84, %59, %43, %27, %16
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @ossl_statem_check_finish_init(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @ASYNC_get_current_job(...) #1

declare dso_local i32 @ssl_start_async_job(%struct.TYPE_10__*, %struct.ssl_async_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
