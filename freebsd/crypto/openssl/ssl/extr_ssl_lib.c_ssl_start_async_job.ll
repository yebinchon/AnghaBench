; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_ssl_start_async_job.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_ssl_start_async_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32*, i32* }
%struct.ssl_async_args = type { i32 }

@SSL_NOTHING = common dso_local global i8* null, align 8
@SSL_F_SSL_START_ASYNC_JOB = common dso_local global i32 0, align 4
@SSL_R_FAILED_TO_INIT_ASYNC = common dso_local global i32 0, align 4
@SSL_ASYNC_PAUSED = common dso_local global i8* null, align 8
@SSL_ASYNC_NO_JOBS = common dso_local global i8* null, align 8
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.ssl_async_args*, i32 (i8*)*)* @ssl_start_async_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_start_async_job(%struct.TYPE_3__* %0, %struct.ssl_async_args* %1, i32 (i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.ssl_async_args*, align 8
  %7 = alloca i32 (i8*)*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.ssl_async_args* %1, %struct.ssl_async_args** %6, align 8
  store i32 (i8*)* %2, i32 (i8*)** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = call i32* (...) @ASYNC_WAIT_CTX_new()
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %58

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %30 = load %struct.ssl_async_args*, %struct.ssl_async_args** %6, align 8
  %31 = call i32 @ASYNC_start_job(i32** %25, i32* %28, i32* %8, i32 (i8*)* %29, %struct.ssl_async_args* %30, i32 4)
  switch i32 %31, label %51 [
    i32 131, label %32
    i32 128, label %39
    i32 129, label %43
    i32 130, label %47
  ]

32:                                               ; preds = %23
  %33 = load i8*, i8** @SSL_NOTHING, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @SSL_F_SSL_START_ASYNC_JOB, align 4
  %37 = load i32, i32* @SSL_R_FAILED_TO_INIT_ASYNC, align 4
  %38 = call i32 @SSLerr(i32 %36, i32 %37)
  store i32 -1, i32* %4, align 4
  br label %58

39:                                               ; preds = %23
  %40 = load i8*, i8** @SSL_ASYNC_PAUSED, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  store i32 -1, i32* %4, align 4
  br label %58

43:                                               ; preds = %23
  %44 = load i8*, i8** @SSL_ASYNC_NO_JOBS, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  store i32 -1, i32* %4, align 4
  br label %58

47:                                               ; preds = %23
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %58

51:                                               ; preds = %23
  %52 = load i8*, i8** @SSL_NOTHING, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @SSL_F_SSL_START_ASYNC_JOB, align 4
  %56 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %57 = call i32 @SSLerr(i32 %55, i32 %56)
  store i32 -1, i32* %4, align 4
  br label %58

58:                                               ; preds = %51, %47, %43, %39, %32, %21
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32* @ASYNC_WAIT_CTX_new(...) #1

declare dso_local i32 @ASYNC_start_job(i32**, i32*, i32*, i32 (i8*)*, %struct.ssl_async_args*, i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
