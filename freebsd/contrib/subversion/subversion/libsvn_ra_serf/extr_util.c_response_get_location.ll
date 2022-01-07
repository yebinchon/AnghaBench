; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_response_get_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_response_get_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i32*, i32*)* @response_get_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @response_get_location(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @serf_bucket_response_get_headers(i32* %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i8* @serf_bucket_headers_get(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %52

21:                                               ; preds = %4
  %22 = load i8*, i8** %11, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load i32*, i32** %9, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @apr_uri_parse(i32* %27, i8* %28, %struct.TYPE_4__* %12)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @APR_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i8* null, i8** %5, align 8
  br label %52

34:                                               ; preds = %26
  %35 = load i8*, i8** %11, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @svn_urlpath__canonicalize(i8* %35, i32* %36)
  %38 = inttoptr i64 %37 to i8*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i8* @apr_uri_unparse(i32* %40, %struct.TYPE_4__* %12, i32 0)
  store i8* %41, i8** %11, align 8
  br label %48

42:                                               ; preds = %21
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @svn_path_is_url(i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i8* null, i8** %5, align 8
  br label %52

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %34
  %49 = load i8*, i8** %11, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i8* @svn_uri_canonicalize(i8* %49, i32* %50)
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %48, %46, %33, %20
  %53 = load i8*, i8** %5, align 8
  ret i8* %53
}

declare dso_local i32* @serf_bucket_response_get_headers(i32*) #1

declare dso_local i8* @serf_bucket_headers_get(i32*, i8*) #1

declare dso_local i64 @apr_uri_parse(i32*, i8*, %struct.TYPE_4__*) #1

declare dso_local i64 @svn_urlpath__canonicalize(i8*, i32*) #1

declare dso_local i8* @apr_uri_unparse(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i8* @svn_uri_canonicalize(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
