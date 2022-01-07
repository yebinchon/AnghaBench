; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_basic.c_serf__setup_request_basic_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_basic.c_serf__setup_request_basic_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }

@HOST = common dso_local global i64 0, align 8
@APR_SUCCESS = common dso_local global i32 0, align 4
@SERF_ERROR_AUTHN_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serf__setup_request_basic_auth(i64 %0, i32 %1, %struct.TYPE_9__* %2, i32* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %16, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @HOST, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %27 = call %struct.TYPE_10__* @serf__get_authn_info_for_server(%struct.TYPE_9__* %26)
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %17, align 8
  br label %31

28:                                               ; preds = %7
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %17, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %18, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %36 = icmp ne %struct.TYPE_11__* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i32*, i32** %15, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @serf_bucket_headers_setn(i32* %48, i64 %51, i64 %54)
  %56 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %56, i32* %8, align 4
  br label %59

57:                                               ; preds = %42, %37, %31
  %58 = load i32, i32* @SERF_ERROR_AUTHN_FAILED, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %47
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_10__* @serf__get_authn_info_for_server(%struct.TYPE_9__*) #1

declare dso_local i32 @serf_bucket_headers_setn(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
